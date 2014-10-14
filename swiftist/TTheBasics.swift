//
//  TTheBasics.swift
//  swiftist
//
//  Created by guo on 2014/10/14.
//  Copyright (c) 2014年 Mountain. All rights reserved.
//

import Foundation

func doBasics() {

    let maximumNumberOfLoginAttempts = 10
    var currentLoginAttempt = 0
    
    var x = 0.0, y = 0.0, z = 0.0
    
    var welcomeMessage: String = "welcome Message Hello"
    
    let π = 3.14159
    let 你好 = "你好世界"
    let 🐶🐮 = "dogcow"
    
    var friendlyWelcome = "Hello!"

    friendlyWelcome = "Bonjour!"
    // friendlyWelcome 现在是 "Bonjour!"
    
    let languageName = "Swift"
    // languageName = "Swift++"
    // 这会报编译时错误 - languageName 不可改变
    
    println(friendlyWelcome)
    // 输出 "Bonjour!"
    
    println("This is a string")
    // 输出 "This is a string"
    
    println("The current value of friendlyWelcome is \(friendlyWelcome)")
    // 输出 "The current value of friendlyWelcome is Bonjour!
    
    // 这是一个注释
    
    /* 这是一个,
    多行注释 */
    
    /* 这是第一个多行注释的开头
    /* 这是第二个被嵌套的多行注释 */
    这是第一个多行注释的结尾 */
    
    let cat = "🐱"; println(cat)
    // 输出 "🐱"
    
    let minValue = UInt8.min  // minValue 为 0，是 UInt8 类型的最小值
    let maxValue = UInt8.max  // maxValue 为 255，是 UInt8 类型的最大值
    
    let meaningOfLife = 42
    // meaningOfLife 会被推测为 Int 类型
    
    let pi = 3.14159
    // pi 会被推测为 Double 类型
    
    let anotherPi = 3 + 0.14159
    // anotherPi 会被推测为 Double 类型
    
    let decimalInteger = 17
    let binaryInteger = 0b10001       // 二进制的17
    let octalInteger = 0o21           // 八进制的17
    let hexadecimalInteger = 0x11     // 十六进制的17
    
    let decimalDouble = 12.1875
    let exponentDouble = 1.21875e1
    let hexadecimalDouble = 0xC.3p0
    
    let paddedDouble = 000123.456
    let oneMillion = 1_000_000
    let justOverOneMillion = 1_000_000.000_000_1
    
    // let cannotBeNegative: UInt8 = -1
    // UInt8 类型不能存储负数，所以会报错
    // let tooBig: Int8 = Int8.max + 1
    // Int8 类型不能存储超过最大值的数，所以会报错
    
    let twoThousand: UInt16 = 2_000
    let one: UInt8 = 1
    let twoThousandAndOne = twoThousand + UInt16(one)
    
    let three = 3
    let pointOneFourOneFiveNine = 0.14159
    let pii = Double(three) + pointOneFourOneFiveNine
    // pii 等于 3.14159，所以被推测为 Double 类型
    
    let integerPi = Int(pii)
    // integerPi 等于 3，所以被推测为 Int 类型
    
    typealias AudioSample = UInt16
    var maxAmplitudeFound = AudioSample.min
    // maxAmplitudeFound 现在是 0
    
    let orangesAreOrange = true
    let turnipsAreDelicious = false
    
    if turnipsAreDelicious {
        //println("Mmm, tasty turnips!")
    } else {
        println("Eww, turnips are horrible.")
    }
    // 输出 "Eww, turnips are horrible."
    
    let i = 1
    // if i {
        // 这个例子不会通过编译，会报错
    // }
    if i == 1 {
        // 这个例子会编译成功
    }
    
    let http404Error = (404, "Not Found")
    // http404Error 的类型是 (Int, String)，值是 (404, "Not Found")
    
    let (statusCode, statusMessage) = http404Error
    println("The status code is \(statusCode)")
    // 输出 "The status code is 404"
    println("The status message is \(statusMessage)")
    // 输出 "The status message is Not Found"
    
    let (justTheStatusCode, _) = http404Error
    println("The status code is \(justTheStatusCode)")
    // 输出 "The status code is 404"
    
    println("The status code is \(http404Error.0)")
    // 输出 "The status code is 404"
    println("The status message is \(http404Error.1)")
    // 输出 "The status message is Not Found"
    
    let http200Status = (statusCode: 200, description: "OK")
    println("The status code is \(http200Status.statusCode)")
    // 输出 "The status code is 200"
    println("The status message is \(http200Status.description)")
    // 输出 "The status message is OK"
    
    let possibleNumber = "123"
    let convertedNumber = possibleNumber.toInt()
    // convertedNumber 被推测为类型 "Int?"， 或者类型 "optional Int"
    
    if convertedNumber != nil {
        println("\(possibleNumber) has an integer value of \(convertedNumber!)")
    } else {
        println("\(possibleNumber) could not be converted to an integer")
    }
    // 输出 "123 has an integer value of 123"
    
    if let actualNumber = possibleNumber.toInt() {
        println("\(possibleNumber) has an integer value of \(actualNumber)")
    } else {
        println("\(possibleNumber) could not be converted to an integer")
    }
    // 输出 "123 has an integer value of 123"
    
    var serverResponseCode: Int? = 404
    // serverResponseCode 包含一个可选的 Int 值 404
    serverResponseCode = nil
    // serverResponseCode 现在不包含值
    
    var surveyAnswer: String?
    // surveyAnswer 被自动设置为 nil
    
    let possibleString: String? = "An optional string."
    println(possibleString!) // 需要惊叹号来获取值
    // 输出 "An optional string."
    
    let assumedString: String! = "An implicitly unwrapped optional string."
    println(assumedString)  // 不需要感叹号
    // 输出 "An implicitly unwrapped optional string."

    if (assumedString != nil) {
        println(assumedString)
    }
    // 输出 "An implicitly unwrapped optional string."
    
    if let definiteString = assumedString {
        println(definiteString)
    }
    // 输出 "An implicitly unwrapped optional string."
    
    let age = -3
    // assert(age >= 0, "A person's age cannot be less than zero")
    // 因为 age < 0，所以断言会触发
    
}