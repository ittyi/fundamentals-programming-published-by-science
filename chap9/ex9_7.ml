(* データ定義 *)
type parson_t = {
  name: string;
  height: int;
  body_weight: int;
  birthday: string;
  blood_type: string;
}

(* 
parson_t list は 
     - []              空リスト
     - first :: rest   最初の要素が first で残りのリストが rest 
                       （first は parson_t 型、rest が自己参照のケース）    
*)

(* 目的: 人の情報リストを受け取り、血液型Aの人間をレコードとして返す *)
(* count_ketsueki_A : parson_t list -> parson_t list *)
let count_ketsueki_A lst = lst
(* val count_ketsueki_A : 'a -> 'a = <fun> *)

(* test: #use "ex9_7.ml";; *)