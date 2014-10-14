//
//  TBasicOperators.swift
//  swiftist
//
//  Created by guo on 2014/10/14.
//  Copyright (c) 2014年 Mountain. All rights reserved.
//

import Foundation

func doBasicOperators() {
    
    let b = 10
    var a = 5
    a = b
    println(a)
    // a 现在等于 10
    
    let (x, y) = (1, 2)
    // 现在 x 等于 1, y 等于 2
    
    //if x = y {
        // 此句错误, 因为 x = y 并不返回任何值
    //}
    
    println(1 + 2)       // 等于 3
    println(5 - 3)       // 等于 2
    println(2 * 3)       // 等于 6
    println(10.0 / 2.5)  // 等于 4.0
    
    println("hello, " + "world")  // 等于 "hello, world"
    
    let dog: Character = "🐶"
    let cow: Character = "🐮"
    let dogCow = dog + cow
    println(dogCow)
    // dogCow 现在是 "🐶🐮"
    
    println(9 % 4)    // 等于 1
    println(-9 % 4)   // 等于 -1
    println(8 % 2.5)  // 等于 -1
    
    var i = 0
    ++i      // 现在 i = 1
    print(i)
    
    var aa = 0
    let bb = ++aa // aa 和 bb 现在都是 1
    let cc = aa++ // aa 现在 2, 但 cc 是 aa 自增前的值 1
    println("bb: \(bb)")
    println("cc: \(cc)")
    
    let three = 3
    let minusThree = -three       // minusThree 等于 -3
    let plusThree = -minusThree   // plusThree 等于 3, 或 "负负3"
    println("minusThree: \(minusThree)")
    println("plusThree: \(plusThree)")
    
    let minusSix = -6
    let alsoMinusSix = +minusSix  // alsoMinusSix 等于 -6
    println("alsoMinusSix: \(alsoMinusSix)")
    
    var aaa = 1
    aaa += 2 // a 现在是 3
    println("aaa: \(aaa)")
    
    println(1 == 1)   // true, 因为 1 等于 1
    println(2 != 1)   // true, 因为 2 不等于 1
    println(2 > 1)    // true, 因为 2 大于 1
    println(1 < 2)    // true, 因为 1 小于2
    println(1 >= 1)   // true, 因为 1 大于等于 1
    println(2 <= 1)   // false, 因为 2 并不小于等于 1
    
    let name = "world"
    if name == "world" {
        println("hello, world")
    } else {
        println("I'm sorry \(name), but I don't recognize you")
    }
    // 输出 "hello, world", 因为 `name` 就是等于 "world"
    
    let contentHeight = 40
    let hasHeader = true
    let rowHeight = contentHeight + (hasHeader ? 50 : 20)
    println("rowHeight:  + \(rowHeight)")
    // rowHeight 现在是 90
    
    let ccontentHeight = 40
    let hhasHeader = true
    var rrowHeight = ccontentHeight
    if hhasHeader {
        rrowHeight = rrowHeight + 50
    } else {
        //rrowHeight = rrowHeight + 20
    }
    println("rrowHeight:  + \(rrowHeight)")
    // rowHeight 现在是 90
    
    let defaultColorName = "red"
    var userDefinedColorName:String?   //默认值为nil
    var colorNameToUse = userDefinedColorName ?? defaultColorName
    //userDefinedColorName的值为空 ，所以colorNameToUse的值为`red`
    println("colorNameToUse:  + \(colorNameToUse)")
    
    userDefinedColorName = "green"
    colorNameToUse = userDefinedColorName ?? defaultColorName
    //userDefinedColorName非空，因此colorNameToUsede的值为绿色
    println("colorNameToUse:  + \(colorNameToUse)")
    
    for index in 1...5 {
        println("\(index) * 5 = \(index * 5)")
    }
    // 1 * 5 = 5
    // 2 * 5 = 10
    // 3 * 5 = 15
    // 4 * 5 = 20
    // 5 * 5 = 25
    
    let names = ["Anna", "Alex", "Brian", "Jack"]
    let count = names.count
    for i in 0..<count {
        println("第 \(i + 1) 个人叫 \(names[i])")
    }
    // 第 1 个人叫 Anna
    // 第 2 个人叫 Alex
    // 第 3 个人叫 Brian
    // 第 4 个人叫 Jack
    
    let allowedEntry = false
    if !allowedEntry {
        println("ACCESS DENIED")
    }
    // 输出 "ACCESS DENIED"
    
    let enteredDoorCode = true
    let passedRetinaScan = false
    if enteredDoorCode && passedRetinaScan {
        println("Welcome!")
    } else {
        println("ACCESS DENIED")
    }
    // 输出 "ACCESS DENIED"
    
    let hasDoorKey = false
    let knowsOverridePassword = true
    if hasDoorKey || knowsOverridePassword {
        println("Welcome!")
    } else {
        println("ACCESS DENIED")
    }
    // 输出 "Welcome!"
    
    if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
        println("Welcome!")
    } else {
        println("ACCESS DENIED")
    }
    // 输出 "Welcome!"
    
    if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
        println("Welcome!")
    } else {
        println("ACCESS DENIED")
    }
    // 输出 "Welcome!"
}