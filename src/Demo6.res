// Variant and pattern matching switch
// https://rescript-lang.org/docs/manual/latest/variant 

type answer = Yes | No | Maybe

// this works
let handleAnswer1 = (a: answer) => {
    if a == Yes{
        "foo"
    }
    else{
        "boo"
    }
}


// this doesnt work
// let handleAnswer2 = (a: answer) => {
//     if a == Yes{
//         "foo"
//     }
//     else if a == No{
//         "boo"
//     }
// }

//this works
let handleAnswer3 = (a: answer) => {
    if a == Yes{
        "foo"
    }
    else if a == No{
        "boo"
    }
    else {
        "yoo"
    }
}

//this doesnt works
// let handleAnswer4 = (a: answer) => {
//     if a == Yes{
//         "foo"
//     }
//     else if a == No{
//         "boo"
//     }
//     else if a == Maybe{
//         "yoo"
//     }
// }

//this works
let handleAnswer5 = (a: answer) => {
    if a == Yes{
        "foo"
    }
    else if a == No{
        "boo"
    }
    else if a == Maybe{
        "yoo"
    }
    else{
        "koo"
    }
}

//to get rid of this nonsense we use "Switch"
// for 1 and 2 do this, for cases other than 1 to 2 do that
// let times = switch count {
// | 1 => "once"
// | 2 => "twice"
// | n => Belt.Int.toString(n) ++ " times"
// }

let handleAnswer6 = (a: answer) => {
    switch a{
    | Yes => "gg"
    | No => "mg"
    // | Maybe => "kg"
    // with switch you can use _ to indicate other cases
    | _ => "other cases"
    }
}

type answer2 = Yes(int) | No(string) | Confused(int) | Maybe

let handleAnswer7 = (a: answer2) => {
    switch a{
    | Yes(n) => "gg" ++ n->Belt.Int.toString
    | No(n) => n 
    | Confused(n)=> n->Belt.Int.toString // making it string for the sake of making all return types of switch as string
    // with switch you can use _ to indicate other cases
    | _ => "other cases"
    }
}

let _ = handleAnswer7(Confused(8))
let x = handleAnswer7(Confused(8))
Js.log(x)