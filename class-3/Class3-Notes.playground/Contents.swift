//: Playground - noun: a place where people can play

import UIKit

//function that counts words from yeerday's hw

func countReapedWords(words: [String]) -> Int
{
    guard words.count > 0 else { return 0 }
    
    var count = 0
    var dictionary = [String: String]()
    
    for word in words {
        if dictionary[word] != nil {
            count += 1
        }
        
        else {
            dictionary[word] = word
        }
    }
    
    return count
}

let words = ["one", "two", "three", "two", "one"]
let count = countReapedWords(words)

func printWhichWords(input: [String]) -> [String: Int]
{
    var repeating = [String : Int]()
    
    for work in input {
        if repeating[work] == nil {
        repeating[work] = 1
    }
    
    else {
            
        repeating[work] = repeating[work]! + 1
        
        }

    }
        
    return repeating
}

printWhichWords(words)


//class 3 notes

struct Person {
    var name: String
    var age: Int
}


let myPerson = Person(name: "Adam", age: 30)

myPerson.age

var otherPerson = myPerson

otherPerson.age = 0

otherPerson.age
myPerson.age

struct Persons {
    var name: String
    var age: Int?
    
    init(name: String, age: Int? = nil)
    {
        self.name = name
        self.age = age
    }
    //starts 'instance' method
    func ageInDogYears() -> Int {
        let age = self.age ?? 0
        return age * 7
    }
}

//extension of Persons - can live anywhere

extension Persons {
    
    func sayHello() {
        print("hi, \(self.name)")
        
    }
}


let me = Persons(name: "Jam")
let otherPersons = Persons(name: "other Guy", age: 40)
let myPeople = Persons(name: "Matt", age: 32)

myPeople.ageInDogYears()

myPeople.sayHello()


//methods- functions that belong to this struct



//optional init -> init? = if anything fails it will return nil and doesn't create istance
//see your photo for example

class Peoples{
    var name: String
    var age: Int?
    
    init(name: String, age: Int? = nil)
    {
        self.name = name
        self.age = age
    }
    //starts 'instance' method
    func ageInDogYears() -> Int {
        let age = self.age ?? 0
        return age * 7
    }
}

let adamPeople = Peoples(name: "Adam", age: 30)
let otherAdam = adamPeople

otherAdam.age = 0

otherAdam.age
adamPeople.age
//changes adamPeople, unlike struct































