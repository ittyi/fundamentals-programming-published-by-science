let () = print_endline "ex7-2 seiseki";;

let seiseki meibo = match meibo with
| (name, seiseki) -> name ^ "さんの評価は" ^ seiseki  ^ "です。";;

let  test1 = seiseki ("test", "A");;
let () = Printf.printf "%s\n" test1;;
print_endline (string_of_bool (test1 = "testさんの評価はAです。"));;
