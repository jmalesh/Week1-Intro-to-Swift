//
//  ObjectStoreProtocol.swift
//  ToDo
//
//  Created by Jessica Malesh on 6/9/16.
//  Copyright © 2016 Michael Babiy. All rights reserved.
//

import Foundation

protocol ObjectStoreProtocol
{
    associatedtype Object: Identity
    
    func add(object: Object)
    func remove(object: Object)
    func objectAtIndex(number: Int) -> Object
    func count() -> Int
    func allObjects() -> [Object]
    func save(object: Object) -> [Object]
}
