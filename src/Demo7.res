//Option and Result
//Option

type myOption<'a> = Some('a) | None
let addOne = (n: option<int> ) => {
    switch n {
        | Some(n) => n + 1
        | None => 0
    }
}
//if I dont explicitly define n having option<int> it takes up type as myOption<'a>
let addOne1 = (n ) => {
    switch n {
        | Some(n) => n + 1
        | None => 0
    }
}
// let ans = addOne(1)
// this gives error
//instead do this
let ans = addOne(Some(1))
Js.log(ans)
let _ = addOne(None)

type myResult<'a,'b> = Error('a) | Ok('b)

let validateAge = (a: int) => {
    if a>150{
        Error("Invalid age")
    }else{
        Ok(a)
    }
}

let result = validateAge(200)
Js.log(result)
//output
//{ TAG: 0, _0: 'Invalid age' }

let result1 =  switch result{
    | Ok(n) => n->Belt.Int.toString
    | Error(s) => s
}
Js.log(result1)
// output
// { TAG: 0, _0: 'Invalid age' }
// Invalid age