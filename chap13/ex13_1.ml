type parson_t = {
  name: string;
  height: int;
  body_weight: int;
  birthday: string;
  blood_type: string;
}

let test = [{
    name = "string";
    height = 170;
    body_weight = 56;
    birthday = "11/15";
    blood_type = "O";
  },
  {
    name = "string";
    height = 170;
    body_weight = 56;
    birthday = "11/15";
    blood_type = "O";
  },
  {
    name = "string";
    height = 170;
    body_weight = 56;
    birthday = "11/15";
    blood_type = "A";
  }
]

(* 目的: parson_t 型の list を受け取り、指定した血液型の数を返す *)
(* count_ketsueki : parson_t list -> int *)
let count_ketsueki lst blood_type = 0

(* test: #use "ex13_1.ml";; *)
let test1 = count_ketsueki test "A" = 1
let test2 = count_ketsueki test "B" = 0
let test3 = count_ketsueki test "O" = 2
