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

(* 目的: 最も人数の多い血液型を返す *)
(* saita_ketsueki : parson_t list -> string list *)
(* 人数が多いとはいえ、同じ人数の時がありそうなので一旦listで返します。 *)
let rec saita_ketsueki lst = []

(* test: #use "ex10_8.ml";; *)
