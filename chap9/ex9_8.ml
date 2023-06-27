(* データ定義 *)
type parson_t = {
  name: string;
  height: int;
  body_weight: int;
  birthday: string;
  blood_type: string;
  seiza: string;
}

(* 
parson_t list は 
     - []              空リスト
     - first :: rest   最初の要素が first で残りのリストが rest 
                       （first は parson_t 型、rest が自己参照のケース）    
*)

(* 目的: 乙女座の人だけで名前のリストを返す *)
(* otomeza : parson_t list -> string list *)
let rec otomeza lst = match lst with
| [] -> []
| {
    name = n;
    height = h;
    body_weight = bw;
    birthday = b;
    blood_type = bt;
    seiza = s;
  } :: rest -> if s = "乙女座"
      then n :: otomeza rest
      else otomeza rest

(* test: #use "ex9_8.ml";; *)
let test1 = otomeza [] = []
let test2 = otomeza [
  {
    name = "Aの人1";
    height = 150;
    body_weight = 40;
    birthday = "12/24";
    blood_type = "A";
    seiza = "乙女座"
  };
  {
    name = "Aじゃない人";
    height = 160;
    body_weight = 50;
    birthday = "12/24";
    blood_type = "B";
    seiza = "うお座";
  };
  {
    name = "Aの人2";
    height = 170;
    body_weight = 60;
    birthday = "12/24";
    blood_type = "A";
    seiza = "乙女座";
  }
] = ["Aの人1"; "Aの人2"]