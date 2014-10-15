//
//  TFunctions.swift
//  swiftist
//
//  Created by guo on 2014/10/15.
//  Copyright (c) 2014年 Mountain. All rights reserved.
//

import Foundation

func doFounctions() {
    func sayHello(personName: String) -> String {
        let greeting = "Hello, " + personName + "!"
        return greeting
    }
    println(sayHello("Anna"))
    // prints "Hello, Anna!"
    println(sayHello("Brian"))
    // prints "Hello, Brian!
    
    func sayHelloAgain(personName: String) -> String {
        return "Hello again, " + personName + "!"
    }
    println(sayHelloAgain("Anna"))
    // prints "Hello again, Anna!
    
    func halfOpenRangeLength(start: Int, end: Int) -> Int {
        return end - start
    }
    println(halfOpenRangeLength(1, 10))
    // prints "9
    
    func sayHelloWorld() -> String {
        return "hello, world"
    }
    println(sayHelloWorld())
    // prints "hello, world
    
    func sayGoodbye(personName: String) {
        println("Goodbye, \(personName)!")
    }
    sayGoodbye("Dave")
    // prints "Goodbye, Dave!
    
    func printAndCount(stringToPrint: String) -> Int {
        println(stringToPrint)
        return countElements(stringToPrint)
    }
    func printWithoutCounting(stringToPrint: String) {
        printAndCount(stringToPrint)
    }
    printAndCount("hello, world")
    // prints "hello, world" and returns a value of 12
    printWithoutCounting("hello, world")
    // prints "hello, world" but does not return a value
    
    func count(string: String) -> (vowels: Int, consonants: Int, others: Int) {
        var vowels = 0, consonants = 0, others = 0
        for character in string {
            switch String(character).lowercaseString {
            case "a", "e", "i", "o", "u":
                ++vowels
            case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
            "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
                ++consonants
            default:
                ++others
            }
        }
        return (vowels, consonants, others)
    }
    
    let total = count("some arbitrary string!")
    println("\(total.vowels) vowels and \(total.consonants) consonants")
    // prints "6 vowels and 13 consonants
    
    func someFunction(parameterName: Int) {
        // function body goes here, and can use parameterName
        // to refer to the argument value for that parameter
    }
    
    func anotherFunction(externalParameterName localParameterName: Int) {
        // function body goes here, and can use localParameterName
        // to refer to the argument value for that parameter
    }
    
    func join(s1: String, s2: String, joiner: String) -> String {
        return s1 + joiner + s2
    }
    
    println(join("hello", "world", ", "))
    // returns "hello, world
    
    func anotherJoin(string s1: String, toString s2: String, withJoiner joiner: String) -> String {
        return s1 + joiner + s2
    }
    
    println(anotherJoin(string: "hello", toString: "world", withJoiner: ", "))
    // returns "hello, world
    
    func containsCharacter(#string: String, #characterToFind: Character) -> Bool {
        for character in string {
            if character == characterToFind {
                return true
            }
        }
        return false
    }
    
    let containsAVee = containsCharacter(string: "aardvark", characterToFind: "v")
    println(containsAVee)
    // containsAVee equals true, because "aardvark" contains a "v”
    
    func thirdJoin(string s1: String, toString s2: String, withJoiner joiner: String = " ") -> String {
        return s1 + joiner + s2
    }
    println(thirdJoin(string: "hello", toString: "world", withJoiner: "-"))
    // returns "hello-world
    println(thirdJoin(string: "hello", toString:"world"))
    // returns "hello world"
    
    func fourthJoin(s1: String, s2: String, joiner: String = " ") -> String {
        return s1 + joiner + s2
    }
    println(fourthJoin("hello", "world", joiner: "-"))
    // returns "hello-world"
    
    func arithmeticMean(numbers: Double...) -> Double {
        var total: Double = 0
        for number in numbers {
            total += number
        }
        return total / Double(numbers.count)
    }
    println(arithmeticMean(1, 2, 3, 4, 5))
    // returns 3.0, which is the arithmetic mean of these five numbers
    println(arithmeticMean(3, 8, 19))
    // returns 10.0, which is the arithmetic mean of these three numbers
    
    func alignRight(var string: String, count: Int, pad: Character) -> String {
        let amountToPad = count - countElements(string)
        for _ in 1...amountToPad {
            string = String(pad) + string
        }
        return string
    }
    let originalString = "hello"
    let paddedString = alignRight(originalString, 10, "-")
    println(originalString)
    println(paddedString)
    // paddedString is equal to "-----hello"
    // originalString is still equal to "hello"
    
    func swapTwoInts(inout a: Int, inout b: Int) {
        let temporaryA = a
        a = b
        b = temporaryA
    }
    var someInt = 3
    var anotherInt = 107
    swapTwoInts(&someInt, &anotherInt)
    println("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
    // prints "someInt is now 107, and anotherInt is now 3”
    
    func addTwoInts(a: Int, b: Int) -> Int {
        return a + b
    }
    func multiplyTwoInts(a: Int, b: Int) -> Int {
        return a * b
    }
    func printHelloWorld() {
        println("hello, world")
    }
    
    var mathFunction: (Int, Int) -> Int = addTwoInts
    println("Result: \(mathFunction(2, 3))")
    // prints "Result: 5
    
    mathFunction = multiplyTwoInts
    println("Result: \(mathFunction(2, 3))")
    // prints "Result: 6"
    
    let anotherMathFunction = addTwoInts
    println(anotherMathFunction)
    // anotherMathFunction is inferred to be of type (Int, Int) -> Int
    
    func printMathResult(mathFunction: (Int, Int) -> Int, a: Int, b: Int) {
        println("Result: \(mathFunction(a, b))")
    }
    printMathResult(addTwoInts, 3, 5)
    // prints "Result: 8”
    
    func stepForward(input: Int) -> Int {
        return input + 1
    }
    func stepBackward(input: Int) -> Int {
        return input - 1
    }
    
    func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
        return backwards ? stepBackward : stepForward
    }
    
    var currentValue = 3
    let moveNearerToZero = chooseStepFunction(currentValue > 0)
    // moveNearerToZero now refers to the stepBackward() function
    
    println("Counting to zero:")
    // Counting to zero:
    while currentValue != 0 {
        println("\(currentValue)... ")
        currentValue = moveNearerToZero(currentValue)
    }
    println("zero!")
    // 3...
    // 2...
    // 1...
    // zero!
    
    func anotherChooseStepFunction(backwards: Bool) -> (Int) -> Int {
        func stepForward(input: Int) -> Int { return input + 1 }
        func stepBackward(input: Int) -> Int { return input - 1 }
        return backwards ? stepBackward : stepForward
    }
    var anotherCurrentValue = -4
    let anotherMoveNearerToZero = chooseStepFunction(anotherCurrentValue > 0)
    // moveNearerToZero now refers to the nested stepForward() function
    while anotherCurrentValue != 0 {
        println("\(anotherCurrentValue)... ")
        anotherCurrentValue = anotherMoveNearerToZero(anotherCurrentValue)
    }
    println("zero!")
    // -4...
    // -3...
    // -2...
    // -1...
    // zero!
    
    
}
