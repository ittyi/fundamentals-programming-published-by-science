(* テスト *) 
let test1 = add_to_each 1 [] = [] 
let test2 = add_to_each 1 [[2]] = [[1; 2]] 
let test3 = add_to_each 1 [[2]; [2; 3]] = [[1; 2]; [1; 2; 3]] 
let test4 = add_to_each 1 [[2]; [2; 3]; [2; 3; 4]] 
                          = [[1; 2]; [1; 2; 3]; [1; 2; 3; 4]] 
 
