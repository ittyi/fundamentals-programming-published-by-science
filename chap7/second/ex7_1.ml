print_endline "ex7-1 goukei_to_heikin";;

(* 5教科を与えると、平均と合計を組にして返す *)
let goukei_to_heikin japanese mathematics science social_studies english = 
    (
      (japanese + mathematics + science + social_studies + english) / 5, 
      (japanese + mathematics + science + social_studies + english)
    );;

let test1 = goukei_to_heikin 50 50 50 50 50 = (50, 250);;
print_endline (string_of_bool test1);;