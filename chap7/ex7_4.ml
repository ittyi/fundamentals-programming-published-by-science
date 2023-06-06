(* 目的: x, yの平面座標を二つ受け取り、その中点を返す *)
(* chuten : (int * int) * (int * int) -> int * int*)
(* 解き方: (((x + x) / 2), ((y + y) / 2)) *)
let chuten plane_coordinates = 0

(* test: #use "ex7_4.ml";; *)
let test1 = chuten ((2, 3), (4, 1)) = (3, 2)
let test1 = chuten ((2, 1), (6, 3)) = (4, 2)
let test1 = chuten ((3, 6), (-3, -2)) = (0, 2)
