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
let count_ketsueki_A lst = match lst with
| [] -> []
| {
    name = n;
    height = h;
    body_weight = bw;
    birthday = b;
    blood_type = bt;
  } :: rest -> []
  (* then [] (* count_ketsueki_A rest *)
  else  *)

(* test: #use "ex9_7.ml";; *)
let test1 = count_ketsueki_A [] = []
let test2 = count_ketsueki_A [
  {
    name = "Aの人1";
    height = 150;
    body_weight = 40;
    birthday = "12/24";
    blood_type = "A";
  };
  {
    name = "Aじゃない人";
    height = 160;
    body_weight = 50;
    birthday = "12/24";
    blood_type = "A";
  };
  {
    name = "Aの人2";
    height = 170;
    body_weight = 60;
    birthday = "12/24";
    blood_type = "A";
  }
] = [
  {
    name = "Aの人1";
    height = 150;
    body_weight = 40;
    birthday = "12/24";
    blood_type = "A";
  };
  {
    name = "Aの人2";
    height = 170;
    body_weight = 60;
    birthday = "12/24";
    blood_type = "A";
  }
]