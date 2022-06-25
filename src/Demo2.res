// https://rescript-lang.org/docs/manual/latest/primitive-types

let x = "abc"
//hover over y, it shows string
//rescript automatically finds it's type
//we can also explicitly mention the type 
let y: string = "ab"
let z: char = 'a'
let myNumber: int = 5
let myFloat: float = 10.9
// let myFloat: float = 10
//this gives an error

let divideBy2 = (x) => x/2

let ans = divideBy2(2)
Js.log(ans)

let divideBy2Float = (x) => x/. 2.
let add = (a,b) => a + b
let concatString = (a,b) => a ++ b

// you have name modules with Initial letter Caps
module Maths = {
    let divideBy2Float = (x) => x/. 2.
}