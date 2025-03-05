//
//  04 operators.swift
//  basic
//
//  Created by 刀子叉子勺 on 2025/3/5.
//

import Foundation

//@main
struct operators {
    static func main() {
        
        let SEPARATOR: String = String(repeating: "-", count: 30)
        
        let x: Int = 1 + 2 * 3
        print("The result of calculation is \(x)")
        print(SEPARATOR)
        
        let y: Int = (1 + 2) * 3
        print("The result of calculation is \(y)")
        print(SEPARATOR)
        
        let age: Int = Int.random(in: 12...24)
        let isAlcohol = age >= 18 ? "can" : "cannot"
        print("The person \(isAlcohol) consume the alcohol drinks because his or her age is \(age).")
        print(SEPARATOR)
        print(age.description)
        print(isAlcohol.isEmpty)
        print(isAlcohol.count)
        print(isAlcohol.description)
        print(SEPARATOR)
        
        let radius: Double = Double.random(in: 1...5)
        let perimeter: Double = 2 * Double.pi * radius
        let area: Double = Double.pi * radius * radius
        print("The circumference of a circle with a radius of \(String(format: "%.2f", radius)) is \(String(format: "%.2f", perimeter)).")
        print("The area of ​​a circle with a radius of \(String(format: "%.2f", radius)) is \(String(format: "%.2f", area))")
        print(SEPARATOR)
        
    }
}
