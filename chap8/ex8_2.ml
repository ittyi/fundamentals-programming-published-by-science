(* #use "ex8_2.ml";; *)
type okozukai_t = {
  name: string;
  price: int;
  place_of_purchase: string;
  purchase_date: string;
}

(* let test = {
  name: "string";
  price: "int";
  place_of_purchase: "string";
  purchase_date: "string";
}

おお〜ちゃんと上記の変数宣言だと、こんな感じで弾いてくれたー
# #use "ex8_2.ml";;
type okozukai_t = {
  name : string;
  price : int;
  place_of_purchase : string;
  purchase_date : string;
}
File "ex8_2.ml", line 24, characters 10-15:
24 |   price = "100";
               ^^^^^
Error: This expression has type string but an expression was expected of type
         int*)

let test = {
  name = "string";
  price = "100";
  place_of_purchase = "string";
  purchase_date = "string";
}