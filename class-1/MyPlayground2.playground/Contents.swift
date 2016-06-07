//: Playground - noun: a place where people can play

import UIKit

//Write a function that takes in a string, checks if it can be converted to a number and if possible, returns a number

func takesString(name: String) -> Int?
{
    let convertedNum = Int(name)
    return convertedNum
}

takesString("42")


//Write a function that takes in a tuple (code, message) and returns a string by using interpolation

func takesTuple(course: Int, description: String) -> String
{
    return "Welcome to \(course): \(description)!"
}
print(takesTuple(401, description: "iOS"))

func description(tuple: (code: Int, message: String)) -> String {
    return "\(tuple.code) \(tuple.message)"
}

description((code: 404, message: "Not found"))


//Write a function that take in a string, and returns a message: “String contains n characters”

func myString(newString: String) -> String
{
    let num = newString.characters.count
    return "String contains \(num) characters."
}

print(myString("Hello World"))


//Write a function that takes in a string and reverses it. Use a simple for loop
//
func reverseWord(reverseString: String) -> String
{
    var data = ""
    for char in reverseString.characters
    {
        data.insert(char, atIndex: reverseString.startIndex)
    }
    return data
}

print(reverseWord("This is backwards"))


//Bonus:
//Declare a variable that’s function. Implement function to take in a string (name) and return greeting message.
//

//var newGreet: (personName: String, greeting: String) -> String = sayHello
//{
//    let personName =
//}

//func sayHello(newHello: String) -> String
//{
// return "Hello, \(newHello), and welcome!"
//}
//
//sayHello("Jammers")
//let newName = sayHello()
//newName = "Bob"

func sayHello(newHello: String) -> String
{
    return "Hello, \(newHello), and welcome!"
}

var hi = sayHello
hi("Jammers")


