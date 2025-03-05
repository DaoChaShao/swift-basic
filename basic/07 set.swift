//
//  07 set.swift
//  basic
//
//  Created by 刀子叉子勺 on 2025/3/5.
//

import Fakery
import Foundation

//@main
struct setSeries {
    static func main() {
        
        let SEPARATOR: String = String(repeating: "-", count: 30)
        
        let faker = Faker()
        
        var names: Set<String> = []
        var bools: Array<Bool> = []
        for _ in 1...10 {
            let name: String = faker.name.firstName()
            let (b, _) = names.insert(name)
            bools.append(b)
        }
        print(names)
        print(names.count)
        print(names.isEmpty)
        print(SEPARATOR)
        
        print(bools)
        print(bools.count)
        print(bools.isEmpty)
        let trueCount: Int = bools.filter{b in b == true}.count
        print(trueCount)
        print(SEPARATOR)
        
        names.remove("Chance")
        print(names)
        print(names.count)
        print(SEPARATOR)
        
        let cartoon: Set<String> = ["Tom", "Jerry", "Lily"]
        let film: Set<String> = ["Jack", "Rose", "Lily", "Lucy"]
        let book: Set<String> = ["Lucy"]
        // c + f
        print(cartoon.union(film))
        // c - f
        print(cartoon.subtracting(film))
        // c x f
        print(cartoon.intersection(film))
        // c ^ f
        print(cartoon.symmetricDifference(film))
        print(SEPARATOR)
        
        print(book.isSubset(of: cartoon))
        print(book.isSubset(of: film))
        print(SEPARATOR)
        
        if let item: String = film.randomElement() {
            print(item)
        } else {
            print("No such item.")
        }
        print(SEPARATOR)
        
        for name in film {
            print("The current name is \(name)")
        }
        print(SEPARATOR)
        
        for (i, name) in film.enumerated() {
            print("The name \(i + 1) is \(name)")
        }
        print(SEPARATOR)
        
        film.forEach{
            name in print(name)
        }
        print(SEPARATOR)
    }
}
