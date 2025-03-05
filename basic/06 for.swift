//
//  06 for.swift
//  basic
//
//  Created by 刀子叉子勺 on 2025/3/5.
//

import Fakery
import Foundation

//@main
struct forSeries {
    static func main() {

        let SEPARATOR: String = String(repeating: "-", count: 30)
        
        let faker = Faker()
        
        var names: [String] = [faker.name.firstName(), faker.name.firstName(), faker.name.firstName()]
        print(names)
        names = names.map{name in name.uppercased()}
        print(names)
        print(SEPARATOR)
        
        for name in names {
            print("The current name is \(name)")
        }
        print(SEPARATOR)
        
        for (index, name) in names.enumerated() {
            print("The name \(index + 1) is \(name)")
        }
        print(SEPARATOR)
        
        for (index, name) in names.enumerated() {
            print(index + 1, name, separator: ":")
        }
        print(SEPARATOR)
        
        for (index, name) in names.enumerated() {
            print(index + 1, name, separator: ":", terminator: " ")
        }
        print()
        print(SEPARATOR)
        
        names.forEach{name in print(name)}
        print(SEPARATOR)
        
        var products: [String] = []
        for _ in 1...10 {
            let product: String = faker.commerce.productName()
            products.append(product)
        }
        print(products)
        print(SEPARATOR)
        
        var nums: [Int] = []
        for _ in 1...10 {
            let num = Int.random(in: 1...5)
            nums.append(num)
        }
        print(nums)
        
        if let nums = nums.min() {
            print(nums)
        } else {
            print("The min array dose not exist.")
        }
        
        if let nums = nums.max() {
            print(nums)
        } else {
            print("The max array does not exist.")
        }

        print(nums.sorted(by: >))
        print(nums.reversed())
        print(nums.sorted(by: <))
        print(nums.shuffled())
        
        // Find the first item that satisfies some conditions
        if let n: Int = nums.first(where: {n in n > 4}) {
            print("The first found number is \(n)")
            if let i: Int = nums.firstIndex(of: n) {
                print("The index of the first found number is at \(i)")
            }
        } else {
            print("The first found number is NIL")
        }
        print(SEPARATOR)
        
        let sentence: String = "I am very passionate about learning Swift."
        let words: [Substring] = sentence.split(separator: " ")
        print("The words's type is \(type(of: words))")
        print(words)
        
        let vocabs: [String] = sentence.components(separatedBy: " ")
        print("The words's type is \(type(of: vocabs))")
        print(vocabs)
        print(SEPARATOR)
        
        let line: String = "apple,banana+carrot"
        let items: [Substring] = line.split(whereSeparator: {
            s in s == "," || s == "+"
        })
        print(items)
        print(items.joined())
        print(items.joined(separator: " and "))
        print(SEPARATOR)
        
    }
}
