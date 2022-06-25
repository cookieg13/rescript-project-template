//Arrays and lists https://rescript-lang.org/docs/manual/latest/array-and-list
// Randomly accessed, dynamically resized, updated, mutable
let myArr = [1,2,3]
myArr[1] = 2
Js.log(myArr)
// Js.Array2.push(myArr,22)
// this gives an error, it expects a var in left
let pushedVal = Js.Array2.push(myArr,22)
//Belt API
Js.log(Belt.Array.size(myArr))
// ReScript provides a singly linked list too. Lists are:

// immutable

// fast at prepending items

// fast at getting the tail

// slow at everything else
let myList = list{1,2,2}