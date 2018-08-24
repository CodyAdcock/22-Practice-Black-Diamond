//
//  Person Class.swift
//  22 Practice Black Diamond
//
//  Created by Cody on 8/22/18.
//  Copyright © 2018 Cody Adcock. All rights reserved.
//

import Foundation
class Person {
    let firstName: String
    let lastName: String
    let age: Int
    
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    
    func areYouAMemberOfTheClub(_ people: [Person]) -> Bool{
        for i in 0..<people.count{
            if self == people[i]{return true}
        }
        return false
    }

}

extension Person: Equatable {
    
    static func ==(lhs: Person, rhs: Person) -> Bool {
        if lhs.firstName != rhs.firstName {return false}
        if lhs.lastName != rhs.lastName{return false}
        if lhs.age != rhs.age{return false}
        
        return true
    }
    
}
