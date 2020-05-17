import UIKit

/*MARK: Coding Challange:
Write a program using TDD that prints the numbers from 1 to 100.

- For multiples of three, print “Fizz” instead of the number.
- For multiples of five, print “Buzz” instead of the number.
- For numbers which are multiples of both three and five print “FizzBuzz”.

 Sample Output:
 1
 2
 Fizz
 4
 Buzz
 Fizz
 7
 8
 Fizz
 Buzz
 11
 Fizz
 13
 14
 FizzBuzz
 16
 17
 Fizz
 19
 Buzz
 …..etc upto 100.
*/

func printFizzBuzz() {
    for i in 1...100 {
        if i % 3 == 0 {
            if i % 5 == 0 {
                print("FizzBuzz")
            }else {
                print("Fizz")
            }
        }else if i % 5 == 0 {
            print("Buzz")
        } else {
            print(i)
        }
    }
}

print(printFizzBuzz())


//MARK: Second Approach
func printFizzBuzzs() {
    for i in 1...100
    {
        if i % 3 == 0 && i % 5 == 0 {
            print("FizzBuzz")
        } else if i % 3 == 0 {
            print("Fizz")
        } else if i % 5 == 0 {
            print("Buzz")
        } else {
            print(i)
        }
    }
}
 print(printFizzBuzzs())


//MARK: For loop with Swift5
func FizzBuzz() {
    for i in 1...100
    {
        if i.isMultiple(of: 3) {
            print("Fizz")
        } else if i.isMultiple(of: 5) {
            print("Buzz")
        } else if i.isMultiple(of: 15) {
            print("FizzBuzz")
        }
    }
}
 print(FizzBuzz())






//MARK: With Switch
func printFizzBuzzWithSwitch() {
    for i in 1...100
    {
        switch (i % 3 == 0, i % 5 == 0)
        {
        case (true, false):
            print("Fizz")
        case (false, true):
            print("Buzz")
        case (true, true):
            print("FizzBuzz")
        default:
            print(i)
        }
    }
}


//MARK: FizzBuzz With Map()
//Iam going to put FizzBuzz into a closure. Like this:
    let fizzbuzz:(Int) -> String = { i in
        switch (i % 3 == 0, i % 5 == 0)
        {
        case (true, false):
            return "Fizz"
        case (false, true):
            return "Buzz"
        case (true, true):
            return "FizzBuzz"
        default:
            return "\(i)"
        }
    }

//And not least but last here’s a beautiful one-liner solution:
/*
Step1: Create an array with integer values from 1 to 100
Step2: Call map(_:) on that array, calling the closure fizzbuzz for every item in the array,
       mapping integer values to string values
Step3: Calling joined(separator:) on the resulting array of strings, effectively glueing them
       together with commas.
*/

Array(1...100).map(fizzbuzz).joined(separator: ", ")
