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
 

(* 目的: 各血液型の人が何人いるかを汲みにして返す *)
(* ketsueki_shukei : parson_t list => int * int * int * int *)
let rec ketsueki_shukei lst = match lst with
| [] -> (0, 0, 0, 0)
| first :: rest -> let (a, b, o, ab) = (ketsueki_shukei rest) in
  if first.blood_type = "A" then (a+1, b, o, ab)
  else if first.blood_type = "B" then (a, b+1, o, ab)
  else if first.blood_type = "O" then (a, b, o+1, ab)
  else if first.blood_type = "AB" then (a, b, o, ab+1)
  else  (a, b, o, ab)

(* test: #use "ex10_7.ml";; *)
let test1 = ketsueki_shukei lst1 = (0, 0, 0, 0)
let test2 = ketsueki_shukei lst2 = (0, 1, 0, 0)
let test3 = ketsueki_shukei lst3 = (0, 0, 1, 1)
let test4 = ketsueki_shukei lst4 = (2, 0, 0, 1)
let test5 = ketsueki_shukei lst5 = (2, 2, 1, 1)
