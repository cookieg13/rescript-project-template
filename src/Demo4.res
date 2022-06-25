//Record https://rescript-lang.org/docs/manual/latest/record
// Records are like JavaScript objects but:

// are immutable by default

// have fixed fields (not extensible)

type person = {
    mutable name: string,
    age: int
}

let person = {
    name: "Jake",
    age: 67
}

Js.log(person.name)

// person.name = "Joe"
//gives an error, so in type declaration make it mutable
person.name = "Joe"


//Object https://rescript-lang.org/docs/manual/latest/object

let person1 = {
    "name": "Jake",
    "age": 67
}

Js.log(person1["name"])

// Combine Types
// You can spread one object type definition into another using ...:

// ReScript
// JS Output

type point2d = {
  "x": float,
  "y": float,
}
type point3d = {
  ...point2d,
  "z": float,
}

let myPoint: point3d = {
  "x": 1.0,
  "y": 2.0,
  "z": 3.0,
}

// The type of document is just some random type 'a
// that we won't bother to specify
@val external documentxyz: 'a = "document"
// 'a = random type ,that we won't bother to specify
//@val external variable_name: type = "value"
// call a method
documentxyz["addEventListener"]("mouseup", _event => {
  Js.log("clicked!")
})

// get a property
let loc = documentxyz["location"]

// set a property
documentxyz["location"]["href"] = "rescript-lang.org"
