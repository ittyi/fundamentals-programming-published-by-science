(* test : #use "ex9_2.ml";; *)
type parson_t = {
  name: string;
  height: int;
  body_weight: int;
  birthday: string;
  blood_type: string;
}

let test = 
  { name = "string"; height = 170; body_weight = 56; birthday = "11/20"; blood_type = "A";}
:: { name = "string2"; height = 171; body_weight = 57; birthday = "11/21"; blood_type = "B";} 
:: { (*こんな書き方もできる*)
  name = "string3";
  height = 172;
  body_weight = 58;
  birthday = "11/22";
  blood_type = "O";
} ::
[]
