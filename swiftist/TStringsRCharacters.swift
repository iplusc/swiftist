//
//  TStringsRCharacters.swift
//  swiftist
//
//  Created by guo on 2014/10/14.
//  Copyright (c) 2014年 Mountain. All rights reserved.
//

import Foundation

func doStringRCharacters() {
    let someString = "Some string literal value"
    let wiseWords = "\"我是要成为海贼王的男人\" - 路飞"
    // "我是要成为海贼王的男人" - 路飞
    let dollarSign = "\u{24}"             // $,  Unicode 标量 U+0024
    let blackHeart = "\u{2665}"           // ♥,  Unicode 标量 U+2665
    let sparklingHeart = "\u{1F496}"  // 💖, Unicode 标量 U+1F496
    println(someString)
    println(wiseWords)
    println(dollarSign)
    println(blackHeart)
    println(sparklingHeart)
    
    var emptyString = ""               // 空字符串字面量
    var anotherEmptyString = String()  // 初始化 String 实例
    // 两个字符串均为空并等价。
    println("emptyString: " + emptyString)
    println("anotherEmptyString: " + anotherEmptyString)
    if emptyString.isEmpty {
        println("什么都没有")
    }
    // 打印输出："什么都没有"
    
    var variableString = "Horse"
    variableString += " and carriage"
    // variableString 现在为 "Horse and carriage"
    let constantString = "Highlander"
    // constantString += " and another Highlander"
    // 这会报告一个编译错误 (compile-time error) - 常量不可以被修改。
    
    for character in "Dog!🐶" {
        println(character)
    }
    // D
    // o
    // g
    // !
    // 🐶
    
    let yenSign: Character = "¥"
    println("yenSign: \(yenSign)")
    
    let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
    println("unusualMenagerie has \(countElements(unusualMenagerie)) characters")
    // 打印输出："unusualMenagerie has 40 characters"
    
    let string1 = "hello"
    let string2 = " there"
    var welcome = string1 + string2
    println("welcome: " + welcome)
    // welcome 现在等于 "hello there"
    
    var instruction = "look over"
    instruction += string2
    println("instruction: " + instruction)
    // instruction 现在等于　"look over there"
    
    let exclamationMark: Character = "!"
    welcome.append(exclamationMark)
    println("welcome: " + welcome)
    // welcome 现在等于 "hello there!"
    
    let multiplier = 3
    let message = "\(multiplier) 乘以 2.5 是 \(Double(multiplier) * 2.5)"
    // message 是 "3 乘以 2.5 是 7.5"
    println("message: " + message)
    
    let quotation = "我们是一样一样滴."
    let sameQuotation = "我们是一样一样滴."
    if quotation == sameQuotation {
        println("这两个字符串被认为是相同的")
    }
    // 打印输出："这两个字符串被认为是相同的"
    
    let romeoAndJuliet = [
        "Act 1 Scene 1: Verona, A public place",
        "Act 1 Scene 2: Capulet's mansion",
        "Act 1 Scene 3: A room in Capulet's mansion",
        "Act 1 Scene 4: A street outside Capulet's mansion",
        "Act 1 Scene 5: The Great Hall in Capulet's mansion",
        "Act 2 Scene 1: Outside Capulet's mansion",
        "Act 2 Scene 2: Capulet's orchard",
        "Act 2 Scene 3: Outside Friar Lawrence's cell",
        "Act 2 Scene 4: A street in Verona",
        "Act 2 Scene 5: Capulet's mansion",
        "Act 2 Scene 6: Friar Lawrence's cell"
    ]
    var act1SceneCount = 0
    for scene in romeoAndJuliet {
        if scene.hasPrefix("Act 1 ") {
            ++act1SceneCount
        }
    }
    println("There are \(act1SceneCount) scenes in Act 1")
    // 打印输出："There are 5 scenes in Act 1"
    
    var mansionCount = 0
    var cellCount = 0
    for scene in romeoAndJuliet {
        if scene.hasSuffix("Capulet's mansion") {
            ++mansionCount
        } else if scene.hasSuffix("Friar Lawrence's cell") {
            ++cellCount
        }
    }
    println("\(mansionCount) mansion scenes; \(cellCount) cell scenes")
    // 打印输出："6 mansion scenes; 2 cell scenes”
    
    let normal = "Could you help me, please?"
    let shouty = normal.uppercaseString
    // shouty 值为 "COULD YOU HELP ME, PLEASE?"
    let whispered = normal.lowercaseString
    // whispered 值为 "could you help me, please?"
    println("shouty: " + shouty)
    println("whispered: " + whispered)
    
    let dogString = "Dog!🐶"
    println("dogString: " + dogString)
    
    for codeUnit in dogString.utf8 {
        print("\(codeUnit) ")
    }
    print("\n")
    // 68 111 103 33 240 159 144 182
    
    for codeUnit in dogString.utf16 {
        print("\(codeUnit) ")
    }
    print("\n")
    // 68 111 103 33 55357 56374
    
    for scalar in dogString.unicodeScalars {
        print("\(scalar.value) ")
    }
    print("\n")
    // 68 111 103 33 128054
    
    for scalar in dogString.unicodeScalars {
        println("\(scalar) ")
    }
    // D
    // o
    // g
    // !
    // 🐶
}