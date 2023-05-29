let morning = "午前"
let afternoon = "午後"
let out_of_range_errer = "errer: Out of range"

(* 目的: 時間を受け取り、午前午後を返す *)
(* jikan: int -> string *)
let jikan h =
  if 0 <= h && h <= 23
    then if (h <= 11) 
      then morning
      else afternoon
    else out_of_range_errer

(* test *)
let test1 = jikan 0 = morning
let test2 = jikan 11 = morning
let test3 = jikan 12 = afternoon
let test4 = jikan 23 = afternoon
let test5 = jikan 24 = out_of_range_errer
let test1 = jikan (-1) = out_of_range_errer
