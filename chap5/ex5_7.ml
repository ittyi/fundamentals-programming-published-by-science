let bmi height weight = weight /. (height *. height) 

(* 目的: bmiの数値によって体型を返す *)
(* taikei : float -> float  -> float *)
let taikei height weight = 
  if bmi height weight < 18.5 then "やせ"
  else if bmi height weight  < 25. then "標準"
  else if bmi height weight  < 30. then "肥満"
  else "高度肥満"

(* test: #use "ex5_7.ml";; *)
let test1 = taikei 1.7 50. = "やせ"
let test1 = taikei 1.7 60. = "標準"
let test1 = taikei 1.7 80. = "肥満"
let test1 = taikei 1.7 90. = "高度肥満"
