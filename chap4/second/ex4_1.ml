let get_hourly_wage year = 850 + (year * 100)

(* val baito_kyuyo : 'a -> 'a = <fun> *)
let baito_kyuyo year time_h = (get_hourly_wage year) * time_h ;;

(* test: ocaml chap4/second/ex4_1.ml *)
let test1 = baito_kyuyo 1 1;;
print_endline (string_of_int test1);;
