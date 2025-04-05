let () = Printf.printf "Hello\n";;

type parson_t = {
  name: string;
  height: int;
  body_weight: int;
  birthday: string;
  blood_type: string;
}

(* fun parson -> parson.name;; *)
let () = Printf.printf "\n~~fun parson -> parson.name test ~~\n";;
let test1 = (fun parson -> parson.name) {
  name= "string";
  height= 1;
  body_weight= 1;
  birthday= "string";
  blood_type= "string";
} = "string"
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = true));;

let test2 = (fun parson -> parson.name) {
  name= "string2";
  height= 1;
  body_weight= 1;
  birthday= "string";
  blood_type= "string";
} = "string2"
let () = Printf.printf "test2: ";;
print_endline (string_of_bool (test2 = true));;

