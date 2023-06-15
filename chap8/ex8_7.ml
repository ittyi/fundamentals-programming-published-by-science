(* サンプルデータだけ検索するのめんどくさいので拝借 *)
(* {kiten="茗荷谷"; shuten="後楽園"; keiyu="丸ノ内線"; kyori=1.8; jikan=2};  *)
type ekikan_t = {
  kiten: string; 
  shuten: string; 
  keiyu: string; 
  kyori: float; 
  jikan: int;
}
