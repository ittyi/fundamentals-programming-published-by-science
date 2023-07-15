type parson_t = {
  name: string;
  height: int;
  body_weight: int;
  birthday: string;
  blood_type: string;
}

(* parson_t list は 
     - []              空リスト
     - first :: rest   最初の要素が first で残りのリストが rest 
                       （first は parson_t 型、 
                         rest が自己参照のケース） 
*) 

(* parson のデータの例 *) 
let parson1 = {name="nakamura"; height=190; body_weight=50; birthday="01/10"; blood_type="A"} 
let parson2 = {name="miyahara"; height=180; body_weight=50; birthday="02/20"; blood_type="B"} 
let parson3 = {name="sato"; height=175; body_weight=50; birthday="03/30"; blood_type="O"} 
let parson4 = {name="idehara"; height=170; body_weight=50; birthday="04/04"; blood_type="AB"} 
let parson5 = {name="tsubata"; height=165; body_weight=50; birthday="05/05"; blood_type="A"} 
let parson6 = {name="asai"; height=160; body_weight=50; birthday="06/06"; blood_type="B"} 
 
(* parson のリストの例 *) 
let lst1 = [] 
let lst2 = [parson2] 
let lst3 = [parson3; parson4] 
let lst4 = [parson4; parson5; parson1] 
let lst5 = [parson4; parson1; parson6; parson5; parson2; parson3] 

(* 目的: saita_ketsueki で利用するため、それぞれの血液型の数を返す関数を関数を ex10.7より移植 *)
(* ketsueki_shukei : parson_t list => int * int * int * int *)
let rec ketsueki_shukei lst = match lst with
| [] -> (0, 0, 0, 0)
| first :: rest -> let (a, b, o, ab) = (ketsueki_shukei rest) in
  if first.blood_type = "A" then (a+1, b, o, ab)
  else if first.blood_type = "B" then (a, b+1, o, ab)
  else if first.blood_type = "O" then (a, b, o+1, ab)
  else if first.blood_type = "AB" then (a, b, o, ab+1)
  else  (a, b, o, ab)

(* 目的: 組を配列に直す関数 *)
let convertSetToAry numSet = match numSet with
| (a, b, o, ab) -> [a; b; o; ab]

(* 目的: 最も人数の多い血液型を返す *)
(* saita_ketsueki : parson_t list -> string list *)
(* 人数が多いとはいえ、同じ人数の時がありそうなので一旦listで返すことにする。 *)
(* 
  必要1: それぞれの血液型の数を返す関数 組で良さそう 
  必要2: 組を配列に直す関数
  必要3: 配列で最多の数字を返す関数
  必要4: その最多の数字を同じものを返す！これだ。
*)

let rec max ary = match ary with
| [] -> 0
| first :: rest -> let num = max rest in
    if first < num then num
    else first

let saita_ketsueki_helper lst max_num num bloodtype = 
  if max_num = num then bloodtype :: lst
  else lst

let saita_ketsueki lst = match lst with
| [] -> []
| lst -> let setNum = (ketsueki_shukei lst) in
  let ary = convertSetToAry setNum in
  let max_num = max ary in
  let (a, b, o, ab) = setNum in
  saita_ketsueki_helper
    (saita_ketsueki_helper
      (saita_ketsueki_helper 
        (saita_ketsueki_helper [] max_num ab "AB")
        max_num o "O"
      )
      max_num b "B"
    )
    max_num a "A"

(* test: #use "ex10_8.ml";; *)
let test1 = saita_ketsueki lst1 = []
let test2 = saita_ketsueki lst2 = ["B"]
let test3 = saita_ketsueki lst3 = ["O"; "AB"]
let test4 = saita_ketsueki lst4 = ["A"]
let test5 = saita_ketsueki lst5 = ["A"; "B"]
