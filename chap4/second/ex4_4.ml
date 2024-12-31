print_endline "test bmi";;

let bmi h g = 1;;

let test1 = bmi "test" "test" = 1;;
print_endline (string_of_bool test1);;

let test2 = bmi 100 50 = 1;;
print_endline (string_of_bool test2);;
