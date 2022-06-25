let x = 5
// rescript variables are immutable, the line below gives error
// x  = 10

let y = ref(5)
y := 10
// rescript variables should be immutable, but to make it mutable we can use ref
// if not needed, we should avoid using refs
// another way of writing := is y.contents
y.contents = 6
Js.log(y)
// output 
// { contents: 6 }

Js.log(y.contents)
// { contents: 6 }
// 10