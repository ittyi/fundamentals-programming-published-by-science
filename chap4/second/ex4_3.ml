print_endline "Hello, World!";;

let hyojun_taiju_for_float m = m *. m *. 22.0;;

let hyojun_taiju_for_int m = m * m * 22;;

let test1 = hyojun_taiju_for_int 1 = 22;;
print_endline (string_of_bool test1);;

let test2 = hyojun_taiju_for_int 170 = 635800;;
print_endline (string_of_bool test2);;

let test3 = string_of_float (hyojun_taiju_for_float 1.7) = "63.58";;
print_endline (string_of_bool test3);;
