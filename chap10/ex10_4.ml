(* データ定義 *)
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

(* parsonデータの例 *) 
let parson1 = {name = "stringName1"; height = 150; body_weight = 40; birthday = "1/1"; blood_type = "A"} 
let parson2 = {name = "stringName2"; height = 160; body_weight = 50; birthday = "2/2"; blood_type = "B"} 
let parson3 = {name = "stringName3"; height = 170; body_weight = 60; birthday = "3/3"; blood_type = "O"} 
let parson4 = {name = "stringName4"; height = 180; body_weight = 70; birthday = "4/4"; blood_type = "AB"} 
let parson5 = {name = "stringName5"; height = 190; body_weight = 80; birthday = "5/5"; blood_type = "A"} 
let parson6 = {name = "stringName6"; height = 200; body_weight = 90; birthday = "6/6"; blood_type = "B"} 
 
(* parsonリストの例 *) 
let lst1 = [] 
let lst2 = [parson1] 
let lst3 = [parson3; parson4] 
let lst4 = [parson4; parson3] 
let lst5 = [parson4; parson1; parson6; parson5; parson2; parson3] 
let lst6 = [parson1; parson2; parson3; parson4; parson5; parson6] 

(* insert helper *)
let rec parson_insert parson_lst parson_item = match parson_lst with
| [] -> [parson_item]
| first :: rest -> if first.name < parson_item.name
  then first :: (parson_insert rest parson_item)
  else parson_item :: first :: rest

let parson_insert_test1 = parson_insert [] parson1 = [parson1]
let parson_insert_test2 = parson_insert [parson1] parson2 = [parson1; parson2]
let parson_insert_test3 = parson_insert [parson1; parson3] parson2 = [parson1; parson2; parson3]
let parson_insert_test4 = parson_insert [parson3; parson4; parson5; parson6] parson2 = [parson2; parson3; parson4; parson5; parson6]

let stringCampTest1 = parson1.name > parson2.name
let stringCampTest2 = parson1.name < parson2.name
(* 上記の動作memo
val stringCampTest1 : bool = false
val stringCampTest2 : bool = true 
*)

(* 目的: 名前の順で整列 *)
(* parson_sort : parson_t list -> parson_t list *)
let rec parson_sort lst = match lst with
| [] -> []
| first :: rest -> (parson_insert (parson_sort rest) first)

(* test *)
(* #use "ex10_4.ml";; *)
let test1 = parson_sort [] = []
let test2 = parson_sort lst2 = lst2
let test3 = parson_sort lst4 = lst3
let test4 = parson_sort lst5 = lst6

