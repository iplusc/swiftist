//
//  TCollectionTypes.swift
//  swiftist
//
//  Created by guo on 2014/10/14.
//  Copyright (c) 2014年 Mountain. All rights reserved.
//

import Foundation

func doCollectionTypes() {
    var shoppingList: [String] = ["Eggs", "Milk"]
    // shoppingList 已经被构造并且拥有两个初始项。
    println("shoppingList: \(shoppingList)")
    
    shoppingList = ["Eggs", "Milk"]
    println("shoppingList: \(shoppingList)")
    
    println("The shopping list contains \(shoppingList.count) items.")
    // 输出"The shopping list contains 2 items."（这个数组有2个项）
    
    if shoppingList.isEmpty {
        println("The shopping list is empty.")
    } else {
        println("The shopping list is not empty.")
    }
    // 打印 "The shopping list is not empty."（shoppinglist不是空的）
    
    shoppingList.append("Flour")
    println("shoppingList: \(shoppingList)")
    // shoppingList 现在有3个数据项，有人在摊煎饼
    
    shoppingList += ["Baking Powder"]
    println("shoppingList: \(shoppingList)")
    // shoppingList 现在有四项了
    shoppingList += ["Chocolate Spread","Cheese","Butter"]
    println("shoppingList: \(shoppingList)")
    // shoppingList 现在有七项了
    
    var firstItem = shoppingList[0]
    // 第一项是 "Eggs"
    println("firstItem: \(firstItem)")
    
    shoppingList[4...6] = ["Bananas", "Apples"]
    // shoppingList 现在有六项
    println("shoppingList: \(shoppingList)")
    
    shoppingList.insert("Maple Syrup", atIndex: 0)
    // shoppingList 现在有7项
    // "Maple Syrup" 现在是这个列表中的第一项
    println("shoppingList: \(shoppingList)")
    
    let mapleSyrup = shoppingList.removeAtIndex(0)
    // 索引值为0的数据项被移除
    // shoppingList 现在只有6项，而且不包括Maple Syrup
    // mapleSyrup常量的值等于被移除数据项的值 "Maple Syrup"
    println("shoppingList: \(shoppingList)")
    println("mapleSyrup: \(mapleSyrup)")
    
    firstItem = shoppingList[0]
    // firstItem 现在等于 "Six eggs"
    println("firstItem: \(firstItem)")
    println("shoppingList: \(shoppingList)")
    
    let apples = shoppingList.removeLast()
    // 数组的最后一项被移除了
    // shoppingList现在只有5项，不包括cheese
    // apples 常量的值现在等于"Apples" 字符串
    println("apples: \(apples)")
    println("shoppingList: \(shoppingList)")
    
    for item in shoppingList {
        println(item)
    }
    // Six eggs
    // Milk
    // Flour
    // Baking Powder
    // Bananas
    
    for (index, value) in enumerate(shoppingList) {
        println("Item \(index + 1): \(value)")
    }
    // Item 1: Six eggs
    // Item 2: Milk
    // Item 3: Flour
    // Item 4: Baking Powder
    // Item 5: Bananas
    
    var someInts = [Int]()
    println("someInts is of type [Int] with \(someInts.count) items。")
    // 打印 "someInts is of type [Int] with 0 items。"（someInts是0数据项的Int[]数组）
    
    someInts.append(3)
    // someInts 现在包含一个INT值
    println("someInts is of type [Int] with \(someInts.count) items。")
    someInts = []
    // someInts 现在是空数组，但是仍然是[Int]类型的。
    println("someInts is of type [Int] with \(someInts.count) items。")
    
    var threeDoubles = [Double](count: 3, repeatedValue:0.0)
    // threeDoubles 是一种 [Double]数组, 等于 [0.0, 0.0, 0.0]
    println("threeDoubles: \(threeDoubles)")
    
    var anotherThreeDoubles = Array(count: 3, repeatedValue: 2.5)
    // anotherThreeDoubles is inferred as [Double], and equals [2.5, 2.5, 2.5]
    println("anotherThreeDoubles: \(anotherThreeDoubles)")
    
    var sixDoubles = threeDoubles + anotherThreeDoubles
    // sixDoubles 被推断为 [Double], 等于 [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]
    println("sixDoubles: \(sixDoubles)")
    
    var airports: Dictionary<String, String> = ["TYO": "Tokyo", "DUB": "Dublin"]
    println("airports: \(airports)")
    
    airports = ["TYO": "Tokyo", "DUB": "Dublin"]
    println("airports: \(airports)")
    
    println("The dictionary of airports contains \(airports.count) items.")
    // 打印 "The dictionary of airports contains 2 items."（这个字典有两个数据项）
    
    airports["LHR"] = "London"
    // airports 字典现在有三个数据项
    println("airports: \(airports)")
    
    airports["LHR"] = "London Heathrow"
    // "LHR"对应的值 被改为 "London Heathrow
    println("airports: \(airports)")
    
    if let oldValue = airports.updateValue("Dublin Internation", forKey: "DUB") {
        println("The old value for DUB was \(oldValue).")
    }
    // 输出 "The old value for DUB was Dublin."（DUB原值是dublin）
    
    if let airportName = airports["DUB"] {
        println("The name of the airport is \(airportName).")
    } else {
        println("That airport is not in the airports dictionary.")
    }
    // 打印 "The name of the airport is Dublin Internation."（机场的名字是都柏林国际）
    
    airports["APL"] = "Apple Internation"
    // "Apple Internation"不是真的 APL机场, 删除它
    println("airports: \(airports)")
    
    airports["APL"] = nil
    // APL现在被移除了
    println("airports: \(airports)")
    
    if let removedValue = airports.removeValueForKey("DUB") {
        println("The removed airport's name is \(removedValue).")
    } else {
        println("The airports dictionary does not contain a value for DUB.")
    }
    // prints "The removed airport's name is Dublin International."
    
    for (airportCode, airportName) in airports {
        println("\(airportCode): \(airportName)")
    }
    // TYO: Tokyo
    // LHR: London Heathrow
    
    for airportCode in airports.keys {
        println("Airport code: \(airportCode)")
    }
    // Airport code: TYO
    // Airport code: LHR
    
    for airportName in airports.values {
        println("Airport name: \(airportName)")
    }
    // Airport name: Tokyo
    // Airport name: London Heathrow
    
    let airportCodes = Array(airports.keys)
    // airportCodes is ["TYO", "LHR"]
    println("airportCodes: \(airportCodes)")
    
    let airportNames = Array(airports.values)
    // airportNames is ["Tokyo", "London Heathrow"]
    println("airportNames: \(airportNames)")
    
    var namesOfIntegers = Dictionary<Int, String>()
    // namesOfIntegers 是一个空的 Dictionary<Int, String>
    
    namesOfIntegers[16] = "sixteen"
    // namesOfIntegers 现在包含一个键值对
    println("namesOfIntegers: \(namesOfIntegers)")
    
    namesOfIntegers = [:]
    // namesOfIntegers 又成为了一个 Int, String类型的空字典
    println("namesOfIntegers: \(namesOfIntegers)")
}