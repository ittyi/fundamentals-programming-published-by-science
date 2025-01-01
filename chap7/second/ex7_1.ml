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


print_endline "標準関数 fst, snd を使った方法。3 番目以降を取得する標準関数はないらしい。";;
let test2 = goukei_to_heikin 50 50 50 50 50;;
let () = Printf.printf "平均: %d, 合計: %d\n" (fst test2) (snd test2)
