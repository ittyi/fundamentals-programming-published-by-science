let get_hourly_wage year = 850 + (year * 100)

(* val baito_kyuyo : 'a -> 'a = <fun> *)
let baito_kyuyo year time_h = (get_hourly_wage year) * time_h ;;

(* test: ocaml chap4/second/ex4_1.ml *)
let test1 = baito_kyuyo 1 1 = 950;;
print_endline (string_of_bool test1);;

let test2 = baito_kyuyo 1 2 = 1900;;
print_endline (string_of_bool test2);;

let test2 = baito_kyuyo 2 2 = 2100;;
print_endline (string_of_bool test2);;
