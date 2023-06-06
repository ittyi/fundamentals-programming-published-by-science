(* 目的: x, yの平面座標を二つ受け取り、その中点を返す *)
(* chuten : (int * int) * (int * int) -> int * int*)
(* 解き方: (((x + x) / 2), ((y + y) / 2)) *)
let chuten plane_coordinates = match plane_coordinates with
| ((x1, y1), (x2, y2)) -> (((x1 + x2) / 2), ((y1 + y2) / 2))

(* test: #use "ex7_4.ml";; *)
let test1 = chuten ((2, 3), (4, 1)) = (3, 2)
let test1 = chuten ((2, 1), (6, 3)) = (4, 2)
let test1 = chuten ((3, 6), (-3, -2)) = (0, 2)

(* 以下模範回答 *)
(* 目的：組で表された平面座標をふたつ受け取ったら、その中点の座標を返す *) 
(* chuten : float * float -> float * float -> float * float *) 
let chuten_z point1 point2 = match point1 with 
  (x1, y1) -> (match point2 with 
		(x2, y2) -> ((x1 +. x2) /. 2.0, (y1 +. y2) /. 2.0)) 
 
(* テスト *) 
let test4 = chuten_z (0.0, 0.0) (1.0, 2.0) = (0.5, 1.0) 
let test5 = chuten_z (2.3, 5.1) (7.6, 1.7) = (4.95, 3.4) 
let test6 = chuten_z (-3.8, -2.4) (3.4, -1.2) = (-0.2, -1.8) 
 
(* ただし test2, test3 の場合など、小数を２進数で表すときの *) 
(* 誤差のため true にならないことがある *) 
(* ↑なんやねんこれ *)