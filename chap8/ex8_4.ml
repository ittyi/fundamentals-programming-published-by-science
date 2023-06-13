(* #use "ex8_4.ml";; *)
type parson_t = {
  name: string;
  height: int;
  body_weight: int;
  birthday: string;
  blood_type: string;
}

(* 目的: 受け取った情報をもとに血液型を文字列で返す *)
(* ketsueki_hyouji : parson_t -> string = <fun> *)
let ketsueki_hyouji person_info = {
  name = "";
  height = 0;
  body_weight = 0;
  birthday = "";
  blood_type = "";
}
