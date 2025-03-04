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
        
    }
}
