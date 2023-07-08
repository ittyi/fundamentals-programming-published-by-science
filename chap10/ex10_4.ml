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

(* 目的: 名前の順で整列 *)
(* parson_sort : parson_t list -> parson_t list *)
let parson_sort lst = []
