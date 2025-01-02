type ekimei_t = {
  kanji: string;
  kana: string;
  romaji: string;
  shozoku: string;
} ;;
(* {kanji: "茗荷谷"; kana: "test"; romaji: "test"; shozoku: "test";} *)

(* 目的：ekimei_tを受け取ったら「路線名, 駅名（かな）」で返す *)
let hyoji ekimei = "路線名, 駅名（かな）" ;;

print_endline "func hyouji";;
let  test1 = hyoji "";;
let () = Printf.printf "駅: %s\n" test1;;
print_endline (string_of_bool (test1 = "路線名, 駅名（かな）"));;
