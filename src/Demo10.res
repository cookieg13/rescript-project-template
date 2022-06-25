//Js module

Js.Console.logMany(["hello","hi","heyo","hola","hi there"])

let _ = Js.Array2.concat([1,2,3],[2,3,2])
let ans = [1,2,3] -> Js.Array2.concat([2,3,2])

Js.log(ans)

//Belt module
let getNonZero = n => {
    if n == 0 {
        None
    }
    else{
        Some(n)
    }
}


let ans = getNonZero(0)
Js.log(ans)

//output 
// [ 1, 2, 3, 2, 3, 2 ]
// undefined

//so we need to use switch case to handle
let ans1 = switch ans {
    |Some(n) => n
    | None => 10
}

Js.log(ans1)
//output
//10

// We can do the same with Belt in one line

let ans2 = Belt.Option.getExn(getNonZero(4))
let ans2 = getNonZero(4)-> Belt.Option.getExn
// let ans2 = Belt.Option.getExn(getNonZero(0))
// { gives this error when 0 is passed
//   RE_EXN_ID: 'Not_found',
//   Error: Error
Js.log(ans2)
let ans3 = Belt.Option.getWithDefault(getNonZero(0),19)
Js.log(ans3)