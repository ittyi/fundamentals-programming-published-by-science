let square x = x * x ;;
square 3. ;;
(* おそらく、実数じゃなくて整数では？みたいな感じのエラー *)

(* 結果
# square 3. ;;
Error: This expression has type float but an expression was expected of type
         int   

訳: 
エラー: この式の型は float ですが、式の型が予期されていました。
         整数
なので、正解！
*)

let circle = 2. *. pi *. r ;;
circle 2. ;;
(* たぶん、まず pi が宣言がないと怒られそう *)
(* 次に circle は関数じゃないとか？ *)

(* 結果
# let circle = 2. *. pi *. r ;;
Error: Unbound value pi
正解！

piを 3.14 、rを とりあえず2. にしてみたら
# let circle = 2. *. pi *. r ;;
Error: Unbound value pi
# let pi = 3.14;;
val pi : float = 3.14
# let circle = 2. *. pi *. r ;;
Error: Unbound value r
# let r = 2.;;
val r : float = 2.
# let circle = 2. *. pi *. r ;;
val circle : float = 12.56
# circle 2. ;;
Error: This expression has type float
       This is not a function; it cannot be applied.
訳: 
エラー: この式の型は float です
       これは関数ではありません。適用することはできません。
正解！
*)

let TV bangumi youbi =
  bangumi ^ "は" ^ youbi ^ "に放映です。" ;;
TV "ポケモン" "木曜日" ;;
  (* 大文字から始める関数はokなのだろうか *)
  
(* 結果
# let TV bangumi youbi =
    bangumi ^ "は" ^ youbi ^ "に放映です。" ;;
Error: Syntax error

小文字にしてみるといけた
# let tv bangumi youbi =
  bangumi ^ "は" ^ youbi ^ "  に放映です。" ;;
val tv : string -> string -> string = <fun>

ので、大文字はだめで正解〜〜
*)