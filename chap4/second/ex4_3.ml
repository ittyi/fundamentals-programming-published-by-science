let hyojun_taiju_for_float weight = weight *. weight *. 22.0;;

let hyojun_taiju_for_int weight = weight * weight * 22;;

print_endline "test hyojun_taiju";;
print_endline "for_int";;
let test1 = hyojun_taiju_for_int 1 = 22;;
print_endline ("case1: " ^ (string_of_bool test1));;

let test2 = hyojun_taiju_for_int 170 = 635800;;
print_endline ("case2: " ^ (string_of_bool test2));;

print_endline "for_float";;
let test3 = string_of_float (hyojun_taiju_for_float 1.7) = "63.58";;
print_endline ("case3: " ^ (string_of_bool test3));;
