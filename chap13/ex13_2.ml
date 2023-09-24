type parson_t = {
  name: string;
  height: int;
  body_weight: int;
  birthday: string;
  blood_type: string;
}

(* 目的: parson_t 型のリストを受け取ったら、その中の名前のリストを返す関数 *)
(* parson_name : parson_t list -> string list *)
let parson_name lst = lst
