import UIKit

//Mark: Clousers

/*
  Closures are self contained chunks of code that can be passed around and used in your code.
  Closures can capture and store references to any constants or variables from the context in
  which they are defined. This is know as closing over those variables, hence the name closures.
  Closures are use intensively in the Cocoa frameworks – which are used to develop iOS or Mac
  applications.
 
 Functions are a special kind of closures. There are three kinds of closures:
 1.global functions – they have a name and cannot capture any values
 2.nested functions – they have a name and can capture values from their enclosing functions
 3.closure expressions – they don’t have a name and can capture values from their context
 
 The thing to keep in mind for the moment is that you already have an intuition about closures.
 They are almost the same as functions but don’t necessarily have a name.
 */

//MARK: Example
// a closure that has no parameters and return a String
var hello: () -> (String) = {
    return "Hello!"
}

hello() // Hello!

// a closure that take one Int and return an Int
var double: (Int) -> (Int) = { x in
    return 2 * x
}

double(2) // 4

// you can pass closures in your code, for example to other variables
var alsoDouble = double

alsoDouble(3) // 6

// Remember the array sort method? There is similar one named sort(by:)
// that takes a closure as an parameter:
var numbers = [1, 3, 7, 9, 4, 10, 21, 24, 37, 49]
numbers.sort(by: <)
numbers.sort(by: >)

// The < and > operators are defined as functions, which can be referenced as closures. Here is an example for calling sort that uses a closure:
var arrNumbers = [1, 3, 7, 9, 4, 10, 21, 24, 37, 49]
arrNumbers.sort(by: { x, y in
    return x < y
})
//print(arrNumbers)

var numbers1 = [4, 7, 1, 9, 6, 5, 6, 9,145]
let max = numbers1.reduce(numbers1[0]) {
    if $0 > $1 {
        return $0
    }else {
        return $1
    }
}
print(max)
