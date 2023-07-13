(* #use "ex8_3.ml";; *)
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

(* 目的: 各血液型の人が何人いるかを汲みにして返す *)
(* ketsueki_shukei : parson_t list => int * int * int * int *)
let ketsueki_shukei lst = (0, 0, 0, 0)
