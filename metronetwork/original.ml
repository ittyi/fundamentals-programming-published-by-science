(* ダイクストラのアルゴリズムを踏まえて、今の自分の知識で作る方法。 *)

(* 最短距離が確定した点の集合 *)
type confirmed_t = {
  name  : string;
  value : int;
} ;;

let v =[
  {name = "a"; value=0};
];;  
