//: Playground - noun: a place where people can play

import UIKit

//enums

enum CoolStatus : Int
{
    case NotCool
    case KindaCool
    case Cool
    case SuperCool
    
    //add methods to enum
    func howCoolAmI()
    {
        print("You are \(self.rawValue)")
    }
}

//assigning this value

let myStatus = CoolStatus.KindaCool

myStatus
 //added : Int associates it with raw value

myStatus.rawValue
myStatus.hashValue

//can change Int to String with return "KindaCool"

myStatus.howCoolAmI()

enum Identification
{
    case Social(Int)
    case Email(String)
    //adding new case
    case Other(Int, Int, Int)
    
}

let myId = Identification.Email("jmalesh@yahoo.com")
let social = Identification.Social(123456789)
//added other case - creating new instance

let weirdId = Identification.Other(5, 10, 100)



switch weirdId
{
case.Email(let email):
    print(email)
    
case.Other(let int1, let int2, let int3):
    print("\(int1):\(int2):\(int3) ")
    
default:
    print("")
    
}

//computed vs store properties

var count = 10

var doubleCount : Int
{
return count * 2
}

count
doubleCount

//singleton


class Store
{
    static let shared = 0 //static says this has nothing to with instances of Store
    private init(){}
}

// cannot acces this way : let myStore.shared
//access like below
Store.shared

//property observers

var arrCount = 0

var array = [Int]()
{
didSet {
    arrCount += 1
}
}

array.append(5)
arrCount
array.append(10)
arrCount


//type methods

class CrazyStuff
{
    
    func instanceMethod()
    {
        print("This is an instance method")
    }
    
    static func staticMethod()
    {
        print("This is a static method") //can only call in subclasses, but cant override or change
        
    }
    
    class func classMethod() //this makes available to change in subclasses
    {
        print("This is also a static method") //same as above but can get extras
    }
    
}

let myStuff = CrazyStuff()

myStuff.instanceMethod()

//but to call other methods use dot on class

CrazyStuff.staticMethod()
CrazyStuff.classMethod()

//error handling

enum Error: ErrorType
{
    case NoFuel
    case EngineError
}

class Vehicle
{
    var gasMeter = 0
    
    func go() throws
    {
        //check for gas
        if self.gasMeter > 0
        {
            print("Awesome")
        }
        
        else {
            throw Error.NoFuel
        }
    }
    
}


let car = Vehicle()
//car.go()
// fail = no 'try'


let vehicle = Vehicle()
vehicle.gasMeter = 10


//syntax for proper error handling
do {
    try vehicle.go()
    print("We are going...")
}

catch {
    print(error)
}




























