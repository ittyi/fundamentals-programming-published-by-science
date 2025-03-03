type parson_t = {
  name: string;
  height: int;
  body_weight: int;
  birthday: string;
  blood_type: string;
}

let test = {
  name = "string";
  height = 170;
  body_weight = 56;
  birthday = "11/15";
  blood_type = "o";
}

let test2 = {
  name = "string";
  height = 170;
  body_weight = 56;
  birthday = "11/15";
  blood_type = "o";
}

let list = [test; test2]

let rec count_ketsueki lst blood_type = match lst with
| [] -> 0
| f :: r -> if blood_type = f.blood_type
    then 1 + count_ketsueki r blood_type
    else count_ketsueki r blood_type

let test1 = count_ketsueki list "a" = 0;;
let () = Printf.printf "test1: ";;
print_endline (string_of_bool test1);;

let test2 = count_ketsueki list "o" = 2;;
let () = Printf.printf "test2: ";;
print_endline (string_of_bool test2);;