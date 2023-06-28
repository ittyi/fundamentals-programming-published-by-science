(* テスト *) 
let test1 = add_to_each 1 [] = [] 
let test2 = add_to_each 1 [[2]] = [[1; 2]] 
let test3 = add_to_each 1 [[2]; [2; 3]] = [[1; 2]; [1; 2; 3]] 
let test4 = add_to_each 1 [[2]; [2; 3]; [2; 3; 4]] 
                          = [[1; 2]; [1; 2; 3]; [1; 2; 3; 4]] 
 
(* テスト *) 
let test5 = prefix [] = [] 
let test6 = prefix [1] = [[1]] 
let test7 = prefix [1; 2] = [[1]; [1; 2]] 
let test8 = prefix [1; 2; 3; 4] 
                   = [[1]; [1; 2]; [1; 2; 3]; [1; 2; 3; 4]] 