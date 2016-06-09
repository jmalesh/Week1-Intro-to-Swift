//
//  Store.swift
//  ToDo
//
//  Created by Jessica Malesh on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

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
    func save(object: Object) -> [Object]
    {
        return self.listItemId
    }
    
}