let () = Printf.printf "hello\n";;

(* 目的：自然数 n 以下の素数を全て求める関数 sieve をエラトステネスのふるいを使って書く *)
(* int list -> int list *)
let sieve lst = 
  if lst = []
    then  []
    else  []

(* テスト *) 
let () = Printf.printf "\n~~ sieve test ~~ \n"
let test1 = sieve [2] = []
let () = Printf.printf "test1: ";;
print_endline (string_of_bool (test1 = true));;

let test2 = sieve [2, 3, 4, 5, 6, 7, 8, 9, 10] = [2, 3, 5, 7]
let () = Printf.printf "test2: ";;
print_endline (string_of_bool (test2 = true));;

let expected_primes_up_to_1000 =
  [2; 3; 5; 7; 11; 13; 17; 19; 23; 29; 31; 37; 41; 43; 47; 53; 59; 61; 67; 71; 73; 79; 83; 89; 97;
  101; 103; 107; 109; 113; 127; 131; 137; 139; 149; 151; 157; 163; 167; 173; 179; 181; 191; 193; 197; 199;
  211; 223; 227; 229; 233; 239; 241; 251; 257; 263; 269; 271; 277; 281; 283; 293;
  307; 311; 313; 317; 331; 337; 347; 349; 353; 359; 367; 373; 379; 383; 389; 397;
  401; 409; 419; 421; 431; 433; 439; 443; 449; 457; 461; 463; 467; 479; 487; 491; 499;
  503; 509; 521; 523; 541; 547; 557; 563; 569; 571; 577; 587; 593; 599;
  601; 607; 613; 617; 619; 631; 641; 643; 647; 653; 659; 661; 673; 677; 683; 691;
  701; 709; 719; 727; 733; 739; 743; 751; 757; 761; 769; 773; 787; 797;
  809; 811; 821; 823; 827; 829; 839; 853; 857; 859; 863; 877; 881; 883; 887;
  907; 911; 919; 929; 937; 941; 947; 953; 967; 971; 977; 983; 991; 997]

let all_numbers_2_to_1000 =
  let rec range start_num end_num acc =
    if start_num > end_num then List.rev acc
    else range (start_num + 1) end_num (start_num :: acc)
  in
  range 2 1000 []

let test3 = sieve all_numbers_2_to_1000 = expected_primes_up_to_1000
let () = Printf.printf "test3: ";;
print_endline (string_of_bool (test3 = true));;
