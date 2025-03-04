//
//  typeChange.swift
//  basic
//
//  Created by 刀子叉子勺 on 2025/3/5.
//

import Foundation

@main
struct typeChange {
    static func main() {
        
        typealias nonInt = Int
        let i: nonInt = 10
        print("The let \(i)'s type is \(type(of: i))")
        print()
        
        // float type is changed into string
        let f: Float = 3.14
        print("Normally, pi is " + String(f))
        print()
        
        let s: String = "10"
        let d: Double = Double(s) ?? 0
        print("The let d is \(d) and its type is \(type(of: d))")
        print()
        
        let num: Double = 100.5
        print("The result of changing num's type is \(Int(num)) and its type is \(type(of: num))")
        print()
        
        print(Bool(truncating: 0))
        print(Bool(truncating: 1))
        print(Bool(truncating: 100_000_000))
        print()
        
        let a: Int? = 10
        let b: Int? = nil
        print(a!, b ?? 1_000)
        print()
        
//        let item: String? = "Tom"
        let item: String? = nil
        // Method I: unpack the optional var/let, which is NOT recommended
        if item == nil {
            print("There is NO value in item")
        } else {
            print("The value is " + item!)
        }
        print()
        // Method II: unpack the optional var/let, which IS recommended
        if let name: String = item {
            print("The value of the item is " + name)
        } else {
            print("NO name is provided!")
        }
        
    }
}
