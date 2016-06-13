//
//  ToDo.swift
//  ToDo
//
//  Created by Jessica Malesh on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

class ToDo: NSObject, NSCoding, Identity
    
{
    
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
    
    required init(coder aDecoder: NSCoder)
    {
        fatalError("This class doesn't support NSCoding.")
    }
    func encodeWithCoder(aCoder: NSCoder) {}
}
