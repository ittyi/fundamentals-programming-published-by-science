(* 目的: bmiの数値によって体型を返す *)
(* taikei : float -> float  -> float *)
let taikei height weight = ""

(* test: #use "ex5_7.ml";; *)
let test1 = taikei 1.7 50 = "やせ"
let test1 = taikei 1.7 60 = "標準"
let test1 = taikei 1.7 80 = "肥満"
let test1 = taikei 1.7 90 = "高度肥満"
