// ------------------------------------------------------------------------------------------------
// Things to know:
//
// * Tuples are groups of values combined into a single, compound value
// ------------------------------------------------------------------------------------------------
// Defining a Tuple - use parenthesis around the comma-delimited list of values


// This Tuple doesn't specify types, so it relies on inference
let httpError404 = (404, "Not found")

// We can also specify the type in order to avoid inferrence
let someOtherTuple = (Double(100), Bool(false))

// Decomposing tuples looks like this
let(statusCode, statusMessage) = httpError404
statusCode
statusMessage

// We can also decompose into variables instead of constants, but you probably figured that out
var(varStatusCode, varStatusMessage) = httpError404
varStatusCode
varStatusMessage

// You can also access them with the dot operator followed by their index:
httpError404.0
httpError404.1

// Alternatively, you can name the elements of a Tuple
let namedTuple = (statusCode: 404, message: "Not found")

// When you name the elements you effectively assign names to their indices, so the dot operator
// works with names or integers:
namedTuple.statusCode == namedTuple.0
namedTuple.message == namedTuple.1


// ------------------------------------------------------------------------------------------------

//   Tuples allow you to store several values together in a single value. That might sound like arrays,
//   but tuples are different:
//
//   You can’t add or remove items from a tuple,they are fixed in size.
//   You can’t change the type of items in a tuple; they always have the same types they were created with.
//   You can access items in a tuple using numerical positions or by naming them, but Swift won’t
//   let you read numbers or names that don’t exist.

//Tuples are created by placing multiple items into parentheses, like this:
var name = (first: "Puneet", last: "Mahali")

//You then access items using numerical positions starting from 0:
name.0  //here print Puneet
name.1  //here print Mahali

//Or you can access items using their names:
name.first  //here also print Puneet
name.last   //here also print Mahali


// Imp Note:
//Remember, you can change the values inside a tuple after you create it, but not the types of values.
//So, if you tried to change name to be (first: "Justin", age: 25) you would get an error.
//Like:
//name = (first: "Justin", age: 25) //here you will get the error
