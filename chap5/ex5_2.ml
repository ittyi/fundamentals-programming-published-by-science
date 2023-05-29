(* 目的: 時間を受け取り、午前午後を返す *)
(* jikan: int -> string *)
let jikan h = ""

(* test *)
let test1 = jikan 0 = "午前"
let test2 = jikan 11 = "午前"
let test3 = jikan 12 = "午後"
let test4 = jikan 23 = "午後"
