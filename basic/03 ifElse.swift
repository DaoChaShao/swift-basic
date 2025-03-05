//
//  05 ifElse.swift
//  basic
//
//  Created by 刀子叉子勺 on 2025/3/5.
//

import Foundation

//@main
struct condition {
    static func main() {
        
        let SEPARATOR: String = String(repeating: "-", count: 30)
        
        let score: Int = Int.random(in: 0...100)
        if score >= 85 {
            print("You score is \(score), your GPA level is A")
        } else if score >= 70 {
            print("You score is \(score), your GPA level is B")
        } else if score >= 55 {
            print("You score is \(score), your GPA level is C")
        } else if score >= 45 {
            print("You score is \(score), your GPA level is D")
        } else {
            print("You score is \(score), your GPA level is F")
        }
        print(SEPARATOR)
        
        switch score {
        case 85...100:
            print("You score is \(score), your GPA level is A")
        case 70..<85:
            print("You score is \(score), your GPA level is B")
        case 55..<70:
            print("You score is \(score), your GPA level is C")
        case 45..<55:
            print("You score is \(score), your GPA level is D")
        default:
            print("You score is \(score), your GPA level is F")
        }
        print(SEPARATOR)
        
        let gender: Int = Int.random(in: 0...2)
        switch gender {
        case 0:
            print("The code is \(gender), you gender is Female")
        case 1:
            print("The code is \(gender), you gender is Male")
        default:
            print("The code is \(gender), you gender is Walmart Bag")
        }
        print(SEPARATOR)
        
        let stage: Int = Int.random(in: 1...5)
        switch stage {
        case 1:
            print("The mission is processing at stage 1.")
        case 2:
            print("The mission is processing at stage 2.")
        case 3:
            print("The mission is processing at stage 3.")
            fallthrough
        case 4:
            print("The mission is processing at stage 4.")
        default:
            print("The mission is processing at stage 5. The mission is completed.")
        }
        print(SEPARATOR)
        
        let (username, password): (Int, Int) = (Int.random(in: 0...1), Int.random(in: 0...1))
        switch (username, password) {
        case (0, 0):
            print("The username and password are wrong.")
        case (0, 1):
            print("The username is wrong.")
        case (1, 0):
            print("The password is wrong.")
        default:
            print("The username and password are correct.")
        }
        print(SEPARATOR)
        
    }
}
