//
//  tuple.swift
//  basic
//
//  Created by 刀子叉子勺 on 2025/3/5.
//

import Fakery
import Foundation

//@main
struct tupleSeries {
    static func main() {
        
        let SEPARATOR: String = String(repeating: "-", count: 30)
        
        let faker = Faker()
        
        let t = (1, 3.14, faker.name.firstName(), true, "A")
        print("The tuple consists of \(t) and its type is \(type(of: t))")
        print(SEPARATOR)
        
        var tom: (String, Int) = ("Tom", 17)
        print("Tom's information is \(tom)")
        tom.1 = 18
        print("The cat's name is \(tom.0.uppercased()) and his age is \(tom.1)")
        print(SEPARATOR)
        
        // Define a empty tuple
        // let emptyTuple: () = ()
        
        var jerry = (name: "jerry", age: 16)
        print("Jerry's information is \(jerry)")
        jerry.age = 18
        print("Jerry's name is \(jerry.name.uppercased()) and her age is \(jerry.age)")
        print(SEPARATOR)
        
        var jack: (name: String, age: Int) = ("Jack", 22)
        jack.age = 24
        print("The person's name is \(jack.name) and his age is \(jack.age)")
        print(SEPARATOR)
        
        let (name, age) = ("Rose", 20)
        print(name)
        print(age)
        print("The person's name is \(name) and her age is \(age)")
        print(SEPARATOR)
        
        let (username, _) = ("tom", "tom123")
        print("The user's username is \(username)")
        print(SEPARATOR)
        
    }
}
