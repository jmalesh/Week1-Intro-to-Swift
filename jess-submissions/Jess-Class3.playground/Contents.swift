//: Playground - noun: a place where people can play

import UIKit
//task: declare Identity protocol with id function
protocol Identity {
    var id: String { get set }
}

//task: ToDO class that conforms to identity protocol
class ToDo: Identity
    
{
    //task: define model scheme and variables
    let newTask: String
    let newDescription: String
    var id: String
    
    init(newTask: String, newDescription: String)
    {
        
        self.newTask = newTask
        self.newDescription = newDescription
        self.id = NSUUID().UUIDString
    }
    
    func taskDescription() -> String
    {
        return "\(self.newTask): \(self.newDescription) at index id:\(self.id)"
    }
}

//task: define objectStore protocol with required functions
protocol ObjectStoreProtocol
{
    associatedtype Object: Identity
    
    func add(object: Object)
    func remove(object: Object)
    func objectAtIndex(number: Int) -> Object
    func count() -> Int
    func allObjects() -> [Object]
}


//create store
class Store: ObjectStoreProtocol
{
    static let shared = Store()
    init() {}
    
    typealias Object = ToDo
    
    private var listItemId = [Object]()
    
    func add(object: Object)
    {
        self.listItemId.append(object)
    }
    func remove(object: Object)
    {
        self.listItemId = self.listItemId.filter({ (listItemId) -> Bool in
            return object.id != listItemId.id
        })
    }
    func objectAtIndex(number: Int) -> Object
    {
        return self.listItemId[number]
    }
     
    func count() -> Int
    {
        return listItemId.count
    }
    func allObjects() -> [Object]
    {
        return self.listItemId
    }
}

//task: demo add/remove
let taskOne = ToDo(newTask: "Pups", newDescription: "Walk the Dogs")
let taskTwo = ToDo(newTask: "Dishes", newDescription: "Empty and relaod dishwasher")

Store.shared.add(taskOne)
Store.shared.add(taskTwo)

print(Store.shared.count())

for listItemId in Store.shared.allObjects()
{
    print(listItemId.taskDescription())

}

Store.shared.remove(taskTwo)

print(Store.shared.count())

print(Store.shared.objectAtIndex(0))























