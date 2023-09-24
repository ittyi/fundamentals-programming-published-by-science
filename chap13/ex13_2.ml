type parson_t = {
  name: string;
  height: int;
  body_weight: int;
  birthday: string;
  blood_type: string;
}

let testdata1 = {
  name = "string1";
  height = 170;
  body_weight = 56;
  birthday = "11/15";
  blood_type = "O";
}

let testdata2 = {
  name = "string2";
  height = 170;
  body_weight = 56;
  birthday = "11/15";
  blood_type = "O";
}

(* 目的: parson_t 型を受け取ったら、その名前を返す *)
(* get_parson_name : parson_t -> string *)
let get_parson_name parson = parson.name

(* 目的: parson_t 型のリストを受け取ったら、その中の名前のリストを返す関数 *)
(* parson_name : parson_t list -> string list *)
let parson_name lst = List.map get_parson_name lst

(* test: #use "ex13_2.ml";; *)
let test1 = parson_name [testdata1; testdata2] = ["string1"; "string2"]
let test2 = parson_name [] = []
