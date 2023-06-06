(* 目的: x, yの座標を受け取り、x について対象な座標を返す *)
(* taisho_z : int * int -> int * int *)
let taisho_z coordinate = match coordinate with 
  (x, y) -> (0, 0)

(* test: #use "ex7_3.ml";; *)
let test1 = taisho_z (0, 0) = (0, 0)
let test2 = taisho_z (2, -1) = (2, 1)
let test3 = taisho_z (2, 10) = (2, -10)
