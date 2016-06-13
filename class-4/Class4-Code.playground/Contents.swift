//: Playground - noun: a place where people can play

import UIKit


//protocol
protocol Identity
{
    
}

//generic store- doesn't care what t is, just wants to store it

class Store<T> //t indicates generic
{
    private var datastore = [T]()
    
    func add(element:T)
    {
        self.datastore.append(element)
    }
}

let store = Store<Int>()
store.add(1)

let storeTwo = Store<String>()
storeTwo.add("Hello!")

let storeThree = Store<AnyObject>()
storeThree.add("12")



class Person: Identity
{
    
}

let person = Person()

let newStore = Store<Person>()

newStore.add(person)


//swapped generics- slide 38


