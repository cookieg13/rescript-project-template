//Module
// https://rescript-lang.org/docs/manual/latest/module#sidebar
// In rescript every file is a module, like Demo2.res is a module and functions inside Demo2.res can be called from other files
// Much like javascript files, where files/modules can be exported and imported


// let answer = Demo2.divideBy2(6)
// Another way use utilities from module
open Demo2
let answer = divideBy2(6)
// let answerFloat = Demo2.Maths.divideBy2Float(5.4)



//Tuple
// https://rescript-lang.org/docs/manual/latest/tuple
//Tuples are a ReScript-specific data structure that don't exist in JavaScript. They are:

// immutable

// ordered

// fix-sized at creation time

// heterogeneous (can contain different types of values)

let person = ("John",50,6)

//destructuring
let (name,age, _) = person
Js.log(name)
let (name,age,ht) = person
//tuples are used in react use state
// to use usestate we need react component
module Button = {
  @react.component
  let make = (~count: int) => {
    let times = switch count {
    | 1 => "once"
    | 2 => "twice"
    | n => Belt.Int.toString(n) ++ " times"
    }
    let msg = "Click me " ++ times
    //here Tuple is used
	// let (x,setX) = React.useState(_ => "")
    // <button> {msg->React.string} </button>
  }
}
