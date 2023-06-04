let square x = x * x ;;
square 3. ;;
(* おそらく、実数じゃなくて整数では？みたいな感じのエラー *)

let circle = 2. *. pi *. r ;;
circle 2. ;;
(* たぶん、まず pi が宣言がないと怒られそう *)
(* 次に circle は関数じゃないとか？ *)

let TV bangumi youbi =
  bangumi ^ "は" ^ youbi ^ "に放映です。" ;;
  TV "ポケモン" "木曜日" ;;
  (* 大文字から始める関数はokなのだろうか *)
  