type ekimei_t = {
  kanji: string;
  kana: string;
  romaji: string;
  shozoku: string;
} ;;
(* {kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸の内線"} *)

(* 目的：ekimei_tを受け取ったら「路線名, 駅名（かな）」で返す *)
let hyoji ekimei = match ekimei with
| {kanji=kan; kana=ka; romaji=r; shozoku=s;} -> s ^ ", " ^ kan ^ "（" ^ ka ^ "）" ;;

print_endline "func hyouji";;
let test1 = hyoji {kanji="駅名"; kana="かな"; romaji="test"; shozoku="路線名"};;
let () = Printf.printf "駅: %s\n" test1;;
print_endline (string_of_bool (test1 = "路線名, 駅名（かな）"));;

let  test2 = hyoji {kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸の内線"};;
let () = Printf.printf "駅: %s\n" test2;;
print_endline (string_of_bool (test2 = "丸の内線, 茗荷谷（みょうがだに）"));;


type ekikan_t = {
  kiten: string; 
  shuten: string; 
  keiyu: string; 
  kyori: float; 
  jikan: int;
}
(* {kiten="茗荷谷"; shuten="後楽園"; keiyu="丸ノ内線"; kyori=1.8; jikan=2};  *)
