let () = print_endline "ex7-1 goukei_to_heikin";;

(* 5教科を与えると、平均と合計を組にして返す *)
let goukei_to_heikin japanese mathematics science social_studies english = 
  let goukei = (japanese + mathematics + science + social_studies + english) in 
    (
      goukei / 5, 
      goukei
    );;

let test1 = goukei_to_heikin 50 50 50 50 50 = (50, 250);;
print_endline (string_of_bool test1);;


print_endline "標準関数 fst, snd を使った方法。3番目以降を取得する標準関数はないらしい。";;
let test2 = goukei_to_heikin 50 50 50 50 50;;
let () = Printf.printf "平均: %d, 合計: %d\n" (fst test2) (snd test2);;

print_endline "パターンマッチを使った方法。たぶん一番普通";;
let  test3 = goukei_to_heikin 50 50 50 50 50;;
let (average, total)= test3;;
let () = Printf.printf "平均: %d, 合計: %d\n" average total;;
print_endline (string_of_bool (test3 = (50, 250)));;

let  test4 = goukei_to_heikin 50 60 70 80 90;;
let (average, total)= test4;;
let () = Printf.printf "平均: %d, 合計: %d\n" average total;;
print_endline (string_of_bool (test4 = (70,350)));;


let  test5 = goukei_to_heikin 100 60 70 80 90;;
let (average, total)= test5;;
let () = Printf.printf "平均: %d, 合計: %d\n" average total;;
print_endline (string_of_bool (test5 = (80,400)));;
