//module private and public
module type myMathModule = {
    let add: (int,int) => int
}
module MyMath : myMathModule = {
    let add = (a,b) => a + b
    let minus = (a,b) => a-b
}


let _ = MyMath.add(3,9)
// let _ = MyMath.minus(33,4)
// gives error,says minus cant be found

module type myMathModule1 = {
    include myMathModule
    let minus: (int,int) => int
}


module MyMath1 : myMathModule1= {
    let add = (a,b) => a + b
    let minus = (a,b) => a-b
}

let _ = MyMath1.add(3,9)
let _ = MyMath1.minus(3,9)

let _ = Demo9PartTwo.minus(33,3)
// cant find add
// let _ = Demo9PartTwo.add(33,3)