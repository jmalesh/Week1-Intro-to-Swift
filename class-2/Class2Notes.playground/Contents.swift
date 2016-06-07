//: Playground - noun: a place where people can play

import UIKit

//var input = "messi"
//
//func reverse(input input: String)
//{
//    var startIndex = input.startIndex
//    var endIndex = input.endIndex.predecessor()
//    
//    for _in 0...input.characters.count.predecessor() / 2 {
//        let sCharacter = input.characters[startIndex]
//        let eCharacter = input.characters[endIndex]
//        
//        input.removeAtIndex[startIndex]
//        input.insert(input[endIndex]
//    }
//    
//}

var arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

let empty = arr.isEmpty
let count = arr.count

let maxEle = arr.maxElement()
let minEle = arr.minElement()

let contains = arr.contains(3)

arr.append(10) //append to the end of the array

arr

arr.insert(3, atIndex: 0) //insert to specific index

arr[0] = 0
arr

//let last = arr.last
//
//var newArr = ["Mercury", "Venus", "Earth", "Mars"]
//
//let planets = newArr.reduce("")  { (result, planet) -> String //reduce to single string
//    return result + " " + planet
//}
//
//let containsEarth = newArr.filter { (planet) -> bool in
//    return planet == "Earth"
//}


let arrNum = ["12", "2", "4"]

let numbers = arrNum.map { (number) -> Int? in
    Int(number)
}

//dictionaries 

var dictionary = ["one": 1, "two": 2]

for(key, value) in dictionary
{
    print("Key \(key), value \(value)")
}

//reduce(_:combine)

var dict = ["one": "Mercury", "two": "Venus", "three": "Earth"]
let planetss =  dict.reduce("") { (result, dict: (key: String, value: String)) -> String in
    return result + " " + dict.value
}

dict.filter { (key: String, value: String) -> Bool in
    return value == "Earth"
}

dict["four"] = "Mars"
dict

dict.removeValueForKey("one")
dict

for (key, value) in dict {
    print("Key: \(key) and Value: \(value)")
}

for (_, value) in dict {
    print("Value \(value)")
}

for pair in dict {
    print("Pair: \(pair)")
}


let string = "Saturn"
let hash = string.hashValue

let string2 = string
let hash2 = string2.hashValue

var arrOfInts = [0, 0, 1, 2, 2, 4, 4, 7]
let cSet: Set = Set(arrOfInts)



var aSet: Set = [0, 1, 6, 7, 8, 9]
var bSet: Set = [0, 1, 2, 3, 4, 5]

let union = aSet.union(bSet)
let intersect = aSet.intersect(bSet)
let subtract = aSet.subtract(bSet)
let exclusiveOf = aSet.exclusiveOr(bSet)

let thisString = "sun"
let thatString = "earth"

let thisHash = thisString.hashValue
let thatHash = thatString.hashValue
let remainder = abs(thisHash % 99)
let thatRemainder = abs(thatHash % 99)


//homework example add two numbers w/o using +

let numOne = 7


