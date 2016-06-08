//: Playground - noun: a place where people can play

import UIKit

//Write a function that takes in an array of strings, checks if array contains “Earth”, if not, adds it otherwise returns

let planetArray = ["Mercury", "Venus", "Mars"]

func containsEarth(searchArray:[String]) -> [String]
{
    if (searchArray.contains("Earth"))
    {
        return searchArray
    } else {
        var newArray = searchArray
        newArray.append("Earth")
        return newArray
    }
}

var hasEarth = containsEarth
hasEarth(planetArray)


//Use reduce to create single string from the above array. [“Venus”, “Earth”] would produce “Venus, Earth”

var newPlanetArray = ["Venus", "Earth"]

var allPlanets = newPlanetArray.reduce("") { (results, planet) -> String in
    return results + " " + planet
}





//Declare and implement a dictionary that can contain as values Strings, Ints, etc


var emptyDictionary = [:]
emptyDictionary = [String: Int]()
emptyDictionary = ["Age": 12]
emptyDictionary



//Declare a dictionary of string values. Declare a function that takes in a string and searches dictionary for it. Use filter
//
//var myDictionary = [1: "one", 2: "two", 3: "three", 4: "four"]
//var searchThis = [:]
//let filtered = searchThis.filter({_,_ in
//    return filtered
//})




//Write examples for union, intersect, subtract, exclusive Or set operations
var thisSet: Set = ["dog", "cat", "bird", "ant"]
var thatSet: Set = ["fox", "cat", "bird", "cow"]

let union = thisSet.union(thatSet)
let intersect = thisSet.intersect(thatSet)
let subtract = thisSet.subtract(thatSet)
let exclusiveOr = thisSet.exclusiveOr(thatSet)

//Write a function that counts repeating words and prints out the count of each
func countWords(newSet: [String]) -> [String] {
    var newerSet = n
}



//Add two numbers without using “+”

