type parson_t = {
  name: string;
  height: int;
  body_weight: int;
  birthday: string;
  blood_type: string;
}

let test = [{
    name = "string1";
    height = 170;
    body_weight = 56;
    birthday = "11/15";
    blood_type = "O";
  };
  {
    name = "string2";
    height = 170;
    body_weight = 56;
    birthday = "11/15";
    blood_type = "O";
  };
  {
    name = "string3";
    height = 170;
    body_weight = 56;
    birthday = "11/15";
    blood_type = "A";
  }
]

(* 目的: parson_t 型の list を受け取り、指定した血液型の数を返す *)
(* count_ketsueki : parson_t list -> int *)
let rec count_ketsueki lst blood_type = match lst with
| [] -> 0
| first :: rest -> if first.blood_type = blood_type
    then 1 + (count_ketsueki rest blood_type)
    else count_ketsueki rest blood_type

(* test: #use "ex13_1.ml";; *)
let test1 = count_ketsueki test "A" = 1
let test2 = count_ketsueki test "B" = 0
let test3 = count_ketsueki test "O" = 2
