//: Playground - noun: a place where people can play

import UIKit

//Write a function that takes in a string, checks if it can be converted to a number and if possible, returns a number
func takesString(name: String) -> String
{
    let string = "My name is \(name)."
    return string
}


//Write a function that takes in a tuple (code, message) and returns a string by using interpolation

func takesTuple(course: Int, description: String) -> String
{
    return "Welcome to \(course): \(description)!"
}
print(takesTuple(401, description: "iOS"))


//Write a function that take in a string, and returns a message: “String contains n characters”

func myString(newString: String) -> String
{
    let num = newString.characters.count
    return "String contains \(num) characters."
}

print(myString("Hello World"))


//Write a function that takes in a string and reverses it. Use a simple for loop


//Bonus:
//Declare a variable that’s function. Implement function to take in a string (name) and return greeting message.