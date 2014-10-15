//
//  TControlFlow.swift
//  swiftist
//
//  Created by guo on 2014/10/14.
//  Copyright (c) 2014年 Mountain. All rights reserved.
//

import Foundation

func doControlFlow() {
    
    for index in 1...5 {
        println("\(index) times 5 is \(index * 5)")
    }
    // 1 times 5 is 5
    // 2 times 5 is 10
    // 3 times 5 is 15
    // 4 times 5 is 20
    // 5 times 5 is 25
    
    let base = 3
    let power = 10
    var answer = 1
    for _ in 1...power {
        answer *= base
    }
    println("\(base) to the power of \(power) is \(answer)")
    // 输出 "3 to the power of 10 is 59049"
    
    let names = ["Anna", "Alex", "Brian", "Jack"]
    for name in names {
        println("Hello, \(name)!")
    }
    // Hello, Anna!
    // Hello, Alex!
    // Hello, Brian!
    // Hello, Jack!
    
    let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
    for (animalName, legCount) in numberOfLegs {
        println("\(animalName)s have \(legCount) legs")
    }
    // spiders have 8 legs
    // ants have 6 legs
    // cats have 4 legs
    
    for character in "Hello" {
        println(character)
    }
    // H
    // e
    // l
    // l
    // o
    
    for var index = 0; index < 3; ++index {
        println("index is \(index)")
    }
    // index is 0
    // index is 1
    // index is 2
    
    var index: Int
    for index = 0; index < 3; ++index {
        println("index is \(index)")
    }
    // index is 0
    // index is 1
    // index is 2
    println("The loop statements were executed \(index) times")
    // 输出 "The loop statements were executed 3 times
    
    let finalSquare = 25
    var board = [Int](count: finalSquare + 1, repeatedValue: 0)
    board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
    board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
    var square = 0
    var diceRoll = 0
    while square < finalSquare {
        // 掷骰子
        if ++diceRoll == 7 { diceRoll = 1 }
        // 根据点数移动
        square += diceRoll
        if square < board.count {
            // 如果玩家还在棋盘上，顺着梯子爬上去或者顺着蛇滑下去
            square += board[square]
        }
    }
    println("Game over!")
    
    square = 0
    diceRoll = 0
    do {
        // 顺着梯子爬上去或者顺着蛇滑下去
        square += board[square]
        // 掷骰子
        if ++diceRoll == 7 { diceRoll = 1 }
        // 根据点数移动
        square += diceRoll
    } while square < finalSquare
    println("Game over!")
    
    var temperatureInFahrenheit = 30
    if temperatureInFahrenheit <= 32 {
        println("It's very cold. Consider wearing a scarf.")
    }
    // 输出 "It's very cold. Consider wearing a scarf."
    
    temperatureInFahrenheit = 40
    if temperatureInFahrenheit <= 32 {
        // println("It's very cold. Consider wearing a scarf.")
    } else {
        println("It's not that cold. Wear a t-shirt.")
    }
    // 输出 "It's not that cold. Wear a t-shirt."
    
    temperatureInFahrenheit = 90
    if temperatureInFahrenheit <= 32 {
        // println("It's very cold. Consider wearing a scarf.")
    } else if temperatureInFahrenheit >= 86 {
        println("It's really warm. Don't forget to wear sunscreen.")
    } else {
        // println("It's not that cold. Wear a t-shirt.")
    }
    // 输出 "It's really warm. Don't forget to wear sunscreen."
    
    temperatureInFahrenheit = 72
    if temperatureInFahrenheit <= 32 {
        // println("It's very cold. Consider wearing a scarf.")
    } else if temperatureInFahrenheit >= 86 {
        // println("It's really warm. Don't forget to wear sunscreen.")
    }
    
    let someCharacter: Character = "e"
    switch someCharacter {
    case "a", "e", "i", "o", "u":
        println("\(someCharacter) is a vowel")
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
    "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
        println("\(someCharacter) is a consonant")
    default:
        println("\(someCharacter) is not a vowel or a consonant")
    }
    // 输出 "e is a vowel"
    
    let anotherCharacter: Character = "a"
    switch anotherCharacter {
    // case "a":
    case "A":
        println("The letter A")
    default:
        println("Not the letter A")
    }
    // this will report a compile-time error
    
    let count = 3_000_000_000_000
    let countedThings = "stars in the Milky Way"
    var naturalCount: String
    switch count {
    case 0:
        naturalCount = "no"
    case 1...3:
        naturalCount = "a few"
    case 4...9:
        naturalCount = "several"
    case 10...99:
        naturalCount = "tens of"
    case 100...999:
        naturalCount = "hundreds of"
    case 1000...999_999:
        naturalCount = "thousands of"
    default:
        naturalCount = "millions and millions of"
    }
    println("There are \(naturalCount) \(countedThings).")
    // 输出 "There are millions and millions of stars in the Milky Way."
    
    let somePoint = (1, 1)
    switch somePoint {
    case (0, 0):
        println("(0, 0) is at the origin")
    case (_, 0):
        println("(\(somePoint.0), 0) is on the x-axis")
    case (0, _):
        println("(0, \(somePoint.1)) is on the y-axis")
    case (-2...2, -2...2):
        println("(\(somePoint.0), \(somePoint.1)) is inside the box")
    default:
        println("(\(somePoint.0), \(somePoint.1)) is outside of the box")
    }
    // 输出 "(1, 1) is inside the box"
    
    let anotherPoint = (2, 0)
    switch anotherPoint {
    case (let x, 0):
        println("on the x-axis with an x value of \(x)")
    case (0, let y):
        println("on the y-axis with a y value of \(y)")
    case let (x, y):
        println("somewhere else at (\(x), \(y))")
    }
    // 输出 "on the x-axis with an x value of 2"
    
    let yetAnotherPoint = (1, -1)
    switch yetAnotherPoint {
    // case let (x, y) where x == y:
    //    println("(\(x), \(y)) is on the line x == y")
    case let (x, y) where x == -y:
        println("(\(x), \(y)) is on the line x == -y")
    case let (x, y):
        println("(\(x), \(y)) is just some arbitrary point")
    }
    // 输出 "(1, -1) is on the line x == -y"
    
    let puzzleInput = "great minds think alike"
    var puzzleOutput = ""
    for character in puzzleInput {
        switch character {
        case "a", "e", "i", "o", "u", " ":
            continue
        default:
            puzzleOutput += String(character)
        }
    }
    println(puzzleOutput)
    // 输出 "grtmndsthnklk"
    
    let numberSymbol: Character = "三"  // 简体中文里的数字 3
    var possibleIntegerValue: Int?
    switch numberSymbol {
    case "1", "١", "一", "๑":
        possibleIntegerValue = 1
    case "2", "٢", "二", "๒":
        possibleIntegerValue = 2
    case "3", "٣", "三", "๓":
        possibleIntegerValue = 3
    case "4", "٤", "四", "๔":
        possibleIntegerValue = 4
    default:
        break
    }
    if let integerValue = possibleIntegerValue {
        println("The integer value of \(numberSymbol) is \(integerValue).")
    } else {
        println("An integer value could not be found for \(numberSymbol).")
    }
    // 输出 "The integer value of 三 is 3."
    
    let integerToDescribe = 5
    var description = "The number \(integerToDescribe) is"
    switch integerToDescribe {
    case 2, 3, 5, 7, 11, 13, 17, 19:
        description += " a prime number, and also"
        fallthrough
    default:
        description += " an integer."
    }
    println(description)
    // 输出 "The number 5 is a prime number, and also an integer."

    board = [Int](count: finalSquare + 1, repeatedValue: 0)
    board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
    board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
    square = 0
    diceRoll = 0
    gameLoop: while square != finalSquare {
        if ++diceRoll == 7 { diceRoll = 1 }
        switch square + diceRoll {
        case finalSquare:
            // 到达最后一个方块，游戏结束
            break gameLoop
        case let newSquare where newSquare > finalSquare:
            // 超出最后一个方块，再掷一次骰子
            continue gameLoop
        default:
            // 本次移动有效
            square += diceRoll
            square += board[square]
        }
    }
    println("Game over!")
    
}