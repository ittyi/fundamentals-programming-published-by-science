print_endline "Hello, World!";;

let jikoshokai name = "Hello, " ^ name;;

let test1 = jikoshokai "test" = "Hello, test";;
print_endline (string_of_bool test1);;

let test2 = jikoshokai "test2" = "Hello, test2";;
print_endline (string_of_bool test2);;

let test3 = jikoshokai "ttest" = "Hello, ttest";;
print_endline (string_of_bool test3);;

let test4 = jikoshokai "" = "Hello, ";;
print_endline (string_of_bool test4);;
