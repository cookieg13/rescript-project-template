//function, partial application, pip
let sum = (a,b) => a + b
let add5 = sum(5)
let add10 = sum(10)
let double = n => n*2
let ans1 = add5(4)
Js.log(ans1)

let ans = double(add10(add5(3)))
Js.log(ans)

let ans2 = 3 -> add5 -> add10 -> double
let subtract = (a,b) => a -b 
let ans3 = 10 -> subtract(7)
Js.log(ans3)

//labelled arguments

let divide = (~num, ~deno) => num/deno
//order of arguments doesnt matter
let ans4 = divide(~num = 3, ~deno=1)
Js.log(ans4)