//: Playground - noun: a place where people can play

import UIKit

protocol Identity {
    var id: String { get set }
}


class Student: Identity
    
{
    let firstName: String
    let lastName: String
    var id: String
    
    init(firstName: String, lastName: String)
    {
        //create id on the spot
        self.firstName = firstName
        self.lastName = lastName
        self.id = NSUUID().UUIDString
    }
    
    //creating a method
    func description() -> String
    {
        return "\(self.firstName) \(self.lastName): \(self.id)"
    }
}

//implement function to add/remove

protocol ObjectStoreProtocal
{
    associatedtype Object: Identity
    
    func add(object: Object)  //takes above
    func remove(object: Object)
    func removeAllObjects()
    func count() -> Int
    func allStudents() -> [Object]
}

class Store: ObjectStoreProtocal
{
    static let shared = Store()
    private init() {}
    
    typealias Object = Student
    
    private var students = [Object]()
    
    func add(object: Object)
    {
        self.students.append(object)
    }
    func remove(object: Object)
    {
        self.students = self.students.filter({ (student) -> Bool in
            return object.id != student.id
        })
    }
    func removeAllObjects()
    {
     self.students.removeAll()
    }
    func count() -> Int
    {
        return 0
    }
    func allStudents() -> [Object]
    {
        return self.students
    }
    
}


let studentOne = Student(firstName: "Mike", lastName: "Westen")
let studentTwo = Student(firstName: "Luke", lastName: "Westen")

Store.shared.add(studentOne)
Store.shared.add(studentTwo)

for student in Store.shared.allStudents()
{
    print(student.description())
}