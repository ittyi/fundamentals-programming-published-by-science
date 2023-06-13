(* #use "ex8_4.ml";; *)
type parson_t = {
  name: string;
  height: int;
  body_weight: int;
  birthday: string;
  blood_type: string;
}

(* 目的: 受け取った情報をもとに血液型を文字列で返す *)
(* ketsueki_hyouji : parson_t -> string = <fun> *)
let ketsueki_hyouji person_info = match person_info with{
  name = n;
  height = h;
  body_weight = bw;
  birthday = b;
  blood_type = bt;
} -> n ^ "さんの血液型は" ^ bt ^ "型です"

(* test:  #use "ex8_4.ml";; *)
let test1 = ketsueki_hyouji {name = "name"; height = 170; body_weight = 56; birthday = "11/20"; blood_type = "O";}
  = "nameさんの血液型はO型です"
let test2 = ketsueki_hyouji {name = "namee"; height = 170; body_weight = 56; birthday = "11/20"; blood_type = "B";}
  = "nameeさんの血液型はB型です"


(* 初めてみたエラー、記念に残しとこう。
# #use "ex8_4.ml";;
type parson_t = {
  name : string;
  height : int;
  body_weight : int;
  birthday : string;
  blood_type : string;
}
File "ex8_4.ml", lines 12-18, characters 34-11:
12 | ..................................match person_info with{
13 |   name = "";
14 |   height = 0;
15 |   body_weight = 0;
16 |   birthday = "";
17 |   blood_type = "";
18 | } -> "test"
Warning 8 [partial-match]: this pattern-matching is not exhaustive.
Here is an example of a case that is not matched:
{name=""; height=0; body_weight=0; birthday=""; blood_type="*"}
val ketsueki_hyouji : parson_t -> string = <fun> *)