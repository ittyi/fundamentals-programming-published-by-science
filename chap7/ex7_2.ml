(* 目的: 名前と成績の組を受け取ったら、○○さんの評価は△△ですという文字列を返す *)
(* seiseki: string * string -> string *)
let seiseki (name, result) = ""

(* test: #use "ex7_2.ml";; *)
let test1 = seiseki ("ittyi", "普通") = "ittyiさんの評価は普通です"
