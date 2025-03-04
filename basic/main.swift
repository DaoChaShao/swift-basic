//
//  main.swift
//  basic
//
//  Created by 刀子叉子勺 on 2025/3/4.
//

import Foundation

let greet: String = "Hello, World!"
print(greet)
let greetType: Any.Type = type(of: greet)
print(greetType)
print("The string \(greet)'s type is \(greetType)")
print()

var i: Int = 34
i = 3
print(i)
let iType: Any.Type = type(of: i)
print(iType)
print("The int \(i)'s type is \(iType)")
print()

let f: Float = 3.14
print(f)
let fType: Any.Type = type(of: f)
print(fType)
print("The float \(f)'s type is \(fType)")

let fDouble: Double = 3.14
print(fDouble)
let fDoubleType: Any.Type = type(of: fDouble)
print(fDoubleType)
print("The double float \(fDouble)'s type is \(fDoubleType)")
print()

let b: Bool = true
print(b)
let bType: Any.Type = type(of: b)
print(bType)
print("The bool \(b)'s type is \(bType)")
print()
 
let cChinese: Character = "好"
print(cChinese)
let cChineseType: Any.Type = type(of: cChinese)
print(cChineseType)
print("The chinese chracter \(cChinese)'s type is \(cChineseType)")
print()

let cEnglish: Character = "G"
print(cEnglish)
let cEnglishType: Any.Type = type(of: cEnglish)
print(cEnglishType)
print("The english character \(cEnglish)'s type is \(cEnglishType)")
print()

print(cChinese, cEnglish)
print()

// This is a single row comment

/*
 This ismultiple row comments
 */
