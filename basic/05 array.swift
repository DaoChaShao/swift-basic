//
//  05 array.swift
//  basic
//
//  Created by 刀子叉子勺 on 2025/3/5.
//

import Fakery
import Foundation

//@main
struct arraySeries {
    static func main() {
        
        let SEPARATOR: String = String(repeating: "-", count: 30)
        
        let faker = Faker()
        let name = faker.name.firstName()
        print(name)
        print(SEPARATOR)
        
        let i: [Int] = [Int.random(in: 1...10), Int.random(in: 1...10), Int.random(in: 1...10)]
        let s: [String] = [faker.name.firstName(), faker.name.firstName(), faker.name.firstName()]
        let b: [Bool] = [Bool.random(), Bool.random(), Bool.random()]
        print(i)
        print(s)
        print(b)
        print(SEPARATOR)
        
        print(i.count)
        print(i.isEmpty)
        print(SEPARATOR)
        
        var e: [String] = []
        var d = [Double]()
        e.append(faker.address.postcode())
        e.append(contentsOf: [faker.address.postcode(), faker.address.postcode()])
        print(e)
        print(SEPARATOR)
        
        d.insert(Double.random(in: 1...10).rounded(), at: 0)
        d.insert(contentsOf: [Double.random(in: 1...10), Double.random(in: 1...10)], at: 0)
        print(d)
        print(SEPARATOR)
        
        print(e[1])
        print(e[...1])
        print(e[1...])
        print(d[1])
        print(SEPARATOR)
        
        if let item = s.first {
            print(item)
        } else {
            print("No such item.")
        }
        print(s.last ?? "")
        print(SEPARATOR)
        
        if let r: String = s.randomElement() {
            print(r)
        } else {
            print("No such item.")
        }
        print(SEPARATOR)
        
        d.remove(at: 0)
        d.removeLast()
        print(d)
        print(d.contains(3.0))
        print(SEPARATOR)
        
        let options: Array<Any> = ["12", 12]
        if let option = options.randomElement() {
            if let intOption = option as? Int {
                print("Get the int \(intOption)")
            } else if let strOption = option as? String {
                print("Get the string \(strOption)")
            } else {
                print("Unknow type")
            }
        }
        
    }
}

