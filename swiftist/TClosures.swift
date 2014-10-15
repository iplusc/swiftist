//
//  TClosures.swift
//  swiftist
//
//  Created by guo on 2014/10/15.
//  Copyright (c) 2014年 Mountain. All rights reserved.
//

import Foundation

func doClosures() {
    let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
    func backwards(s1: String, s2: String) -> Bool {
        return s1 > s2
    }
    var reversed = sorted(names, backwards)
    // reversed is equal to ["Ewa", "Daniella", "Chris", "Barry", "Alex"]
    println("reversed: \(reversed)")
    
    reversed = sorted(names, { (s1: String, s2: String) -> Bool in
        return s1 > s2
    })
    println("reversed: \(reversed)")
    
    reversed = sorted(names, { (s1: String, s2: String) -> Bool in return s1 > s2 } )
    println("reversed: \(reversed)")
    
    reversed = sorted(names, { s1, s2 in return s1 > s2 } )
    println("reversed: \(reversed)")
    
    // reversed = sorted(names, { s1, s2 in s1 > s2 } )
    // println("reversed: \(reversed)")
    
    // reversed = sorted(names, { $0 > $1 } )
    // println("reversed: \(reversed)")
    
    reversed = sorted(names, >)
    println("reversed: \(reversed)")

    func someFunctionThatTakesAClosure(closure: () -> ()) {
        // 函数体部分
    }
    
    // 以下是不使用尾随闭包进行函数调用
    
    someFunctionThatTakesAClosure({
        // 闭包主体部分
    })
    
    // 以下是使用尾随闭包进行函数调用
    
    someFunctionThatTakesAClosure() {
        // 闭包主体部分
    }

    let digitNames = [
        0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
        5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
    ]
    let numbers = [16, 58, 510]
    let strings = numbers.map {
        (var number) -> String in
        var output = ""
        while number > 0 {
            output = digitNames[number % 10]! + output
            number /= 10
        }
        return output
    }
    // strings 常量被推断为字符串类型数组，即 String[]
    // 其值为 ["OneSix", "FiveEight", "FiveOneZero"]
    println("strings: \(strings)")
    
    func makeIncrementor(forIncrement amount: Int) -> () -> Int {
        var runningTotal = 0
        func incrementor() -> Int {
            runningTotal += amount
            return runningTotal
        }
        return incrementor
    }
    let incrementByTen = makeIncrementor(forIncrement: 10)
    println("incrementByTen: \(incrementByTen)")
    
    let theFirstReturn = incrementByTen()
    // 返回的值为10
    println("theFirstReturn: \(theFirstReturn)")
    
    let theSecondReturn = incrementByTen()
    // 返回的值为20
    println("theSecondReturn: \(theSecondReturn)")
    
    let theThirdReturn = incrementByTen()
    // 返回的值为30
    println("theThirdReturn: \(theThirdReturn)")
    
    let incrementBySeven = makeIncrementor(forIncrement: 7)
    let theFourthReturn = incrementBySeven()
    // 返回的值为7
    println("theFourthReturn: \(theFourthReturn)")
    
    let theFifthReturn = incrementByTen()
    // 返回的值为40
    println("theFifthReturn: \(theFifthReturn)")
    
    let alsoIncrementByTen = incrementByTen
    let theSixReturn = alsoIncrementByTen()
    // 返回的值为50
    println("theSixReturn: \(theSixReturn)")
}