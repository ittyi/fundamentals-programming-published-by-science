(* #use "ex10_4.ml";; *)

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


(* 目的: 名前の順で整列 *)
(* parson_sort : parson_t list -> parson_t list *)
let parson_sort lst = []

(* test *)
let test1 = parson_sort [] = []
let test2 = parson_sort lst2 = lst2
let test3 = parson_sort lst3 = lst3
let test3 = parson_sort lst4 = lst3
