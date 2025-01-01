print_endline "Hello, World!";;

(* 5教科を与えると、平均と合計を組にして返す *)
let goukei_to_heikin japanese mathematics science social_studies english = (50, 250);;

let test1 = goukei_to_heikin 50 50 50 50 50 = (50, 250);;
print_endline (string_of_bool test1);;