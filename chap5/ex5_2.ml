let morning = "午前"
let afternoon = "午後"

(* 目的: 時間を受け取り、午前午後を返す *)
(* jikan: int -> string *)
let jikan h =
  if (h <= 11) 
    then morning
    else afternoon

(* test *)
let test1 = jikan 0 = morning
let test2 = jikan 11 = morning
let test3 = jikan 12 = afternoon
let test4 = jikan 23 = afternoon
