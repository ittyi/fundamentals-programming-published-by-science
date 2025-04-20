(*  現在の最短距離や最短経路を保持するレコード *)
(* 頂点の集合はこのデータのリストになる *)
type eki_t = {
  namae : string; (* 駅名 *)
  saitan_kyori : float; (* 最短距離 *)
  temae_list : string list; (* 駅名のリスト *)
}

let test_data1 = [
  {namae="代々木上原"; saitan_kyori=infinity; temae_list=[]};
  {namae="代々木公園"; saitan_kyori=infinity; temae_list=[]};
  {namae="明治神宮前"; saitan_kyori=infinity; temae_list=[]};
  {namae="表参道"; saitan_kyori=infinity; temae_list=[]};
  {namae="乃木坂"; saitan_kyori=infinity; temae_list=[]}; 
]

(* 目的: リストの始点のみに対し、 saitan_kyori を 0 、temae_list を 始点の駅名のみからなるリストにする *)
(* shokika : eki_t list -> eki_t list *)
let shokika lst = match lst with
| [] -> []
| first :: rest -> {namae=first.namae; saitan_kyori=0.0; temae_list=( first.namae :: [])} :: rest

(* test: #use "ex12_3.ml";; *)
let test1 = shokika test_data1 = [
  {namae="代々木上原"; saitan_kyori=0.0; temae_list=["代々木上原"]};
  {namae="代々木公園"; saitan_kyori=infinity; temae_list=[]};
  {namae="明治神宮前"; saitan_kyori=infinity; temae_list=[]};
  {namae="表参道"; saitan_kyori=infinity; temae_list=[]};
  {namae="乃木坂"; saitan_kyori=infinity; temae_list=[]}; 
]

(* 模範解答 *)
let eki_list = [ 
{namae="池袋"; saitan_kyori = infinity; temae_list = []}; 
{namae="新大塚"; saitan_kyori = infinity; temae_list = []}; 
{namae="茗荷谷"; saitan_kyori = infinity; temae_list = []}; 
{namae="後楽園"; saitan_kyori = infinity; temae_list = []}; 
{namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []}; 
{namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []} 
] 
 
(* 目的：ekimei list から eki list を作る *) 
(* shokika : eki_t list -> string -> eki_t list *) 
let rec shokika eki_list kiten = match eki_list with 
    [] -> [] 
  | ({namae = k; saitan_kyori = s; temae_list = t} as first) :: rest -> 
      if k = kiten 
      then {namae = k; saitan_kyori = 0.; temae_list = [k]} 
	   :: shokika rest kiten 
      else first :: shokika rest kiten 
 
(* テスト *) 
let test1 = shokika [] "茗荷谷" = [] 
let test2 = shokika eki_list "茗荷谷" = [ 
{namae="池袋"; saitan_kyori = infinity; temae_list = []}; 
{namae="新大塚"; saitan_kyori = infinity; temae_list = []}; 
{namae="茗荷谷"; saitan_kyori = 0.; temae_list = ["茗荷谷"]}; 
{namae="後楽園"; saitan_kyori = infinity; temae_list = []}; 
{namae="本郷三丁目"; saitan_kyori = infinity; temae_list = []}; 
{namae="御茶ノ水"; saitan_kyori = infinity; temae_list = []} 
] 