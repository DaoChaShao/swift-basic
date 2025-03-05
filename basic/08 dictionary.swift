//
//  08 dictionary.swift
//  basic
//
//  Created by 刀子叉子勺 on 2025/3/5.
//

import Fakery
import Foundation

//@main
struct dictionarySeries {
    static func main() {
        
        let SEPARATOR: String = String(repeating: "-", count: 30)
        
        let faker = Faker()
        
        let intRange: StrideTo<Int> = stride(from: 1, to: 11, by: 1)
        print(intRange.contains(11))
        print(SEPARATOR)
        
        var info: Dictionary<String, Int> = [:]
        for _ in intRange {
            let name: String = faker.name.firstName()
            let age: Int = Int.random(in: 6...24)
            info[name] = age
        }
        print(info)
        print(info.count)
        print(info.isEmpty)
        print(SEPARATOR)
        
        print(info["Creola", default: 0])
        print(SEPARATOR)
        
        for (k, v) in info {
            print("\(k): \(v)")
        }
        print(SEPARATOR)
        
        for k in info.keys {
            print("\(k)")
        }
        print(SEPARATOR)
        
        for v in info.values {
            print("\(v)")
        }
        print(SEPARATOR)
        
        info.forEach{
            (k, v) in print("\(k): \(v)")
        }
        print(SEPARATOR)
        
        if let couple: (key: String, value: Int) = info.randomElement() {
            print(couple)
            print("\(couple.key): \(couple.value)")
        }
        print(SEPARATOR)
        
    }
}
