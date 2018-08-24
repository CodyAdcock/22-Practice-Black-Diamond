//
//  PersonClassController.swift
//  22 Practice Black Diamond
//
//  Created by Cody on 8/22/18.
//  Copyright © 2018 Cody Adcock. All rights reserved.
//

import Foundation
class PersonController{
    static var people: [Person]{
        let james = Person(firstName: "James", lastName: "Pacheco", age: 26)
        let andrea = Person(firstName: "Andrea", lastName: "Mower", age: 24)
        let carol = Person(firstName: "Rebecca", lastName: "Mordo", age: 30)
        let john = Person(firstName: " John", lastName: "Doe", age: 25)
        let jane = Person(firstName: "Jane", lastName: "Dough", age: 52)
        let maria = Person(firstName: "Maria", lastName: "Garcia", age: 30)
        let mario = Person(firstName: "Mario", lastName: "Plumber", age: 100)
        let luigi = Person(firstName: "Luigi", lastName: "Plumber", age: 99)
        let peach = Person(firstName: "Peach", lastName: "Princess", age: 98)
       
        return [james, andrea, carol, john, jane, maria, mario, luigi, peach]
    }
    
    static var members: [Person]{
        let james = Person(firstName: "James", lastName: "Pacheco", age: 26)
        let andrea = Person(firstName: "Andrea", lastName: "Mower", age: 24)
        let carol = Person(firstName: "Rebecca", lastName: "Mordo", age: 30)
        let john = Person(firstName: " John", lastName: "Doe", age: 25)
        
        return [james, andrea, carol, john]
    }
    
    
    
}
