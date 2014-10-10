//
//  ViewController.swift
//  swiftist
//
//  Created by guo on 2014/10/09.
//  Copyright (c) 2014年 Mountain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    var targetURL = "http://google.com"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tryHelloWorld()
        loadAddressURL()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tryHelloWorld() {
        println("hello world")
        
        trySampleValues()
        tryControlFlow()
    }
    
    func trySampleValues() {
        // var & let
        var myVariable = 42
        myVariable = 50
        let myConstant = 42
        println("myVariable:" + myVariable.description)
        println("myConstant:" + myConstant.description)
        
        //style
        let implicitInteger = 70
        let implicitDouble = 70.0
        let explicitDouble: Double = 70
        println("implicitInteger:" + implicitInteger.description)
        println("implicitDouble:" + implicitDouble.description)
        println("explicitDouble:" + explicitDouble.description)
        
        //change style
        let label = "The width is "
        let width = 94
        let widthLabel = label + String(width)
        println("widthLabel:" + widthLabel)
        
        //\()
        let apples = 3
        let oranges = 5
        let appleSummary = "I have \(apples) apples"
        let fruitSummary = "I have \(apples + oranges) pieces of fruit"
        println("appleSummary:" + appleSummary)
        println("fruitSummary:" + fruitSummary)
        
        //Array & Dictionary
        let emptyArray = [String]()
        var emptyDictionary = [String:Float]()
        
        var shopingList = []
        var occupations = [:]
    }
    
    func tryControlFlow() {
        let individualScores = [75, 43, 103, 87, 12]
        var teamScore = 0
        for score in individualScores {
            if score > 50 {
                teamScore += 3
            } else {
                teamScore += 1
            }
        }
        println("teamScore:" + String(teamScore))
        
        var optionalString: String? = "Hello"
        
        println(optionalString == nil)
        
        var optionalName: String? = "John Appleseed"
        var greeting = "Hello!"
        if let name = optionalName {
            greeting = "Hello, \(name)"
        }
        println("greeting:" + greeting)
        
        let vegetable = "red pepper"
        var vegetableComment = ""
        switch vegetable {
        case "celery":
            vegetableComment = "Add some raisins and make ants on a log."
        case "cucumber", "watercress":
            vegetableComment = "That would make a good tea sandwich."
        case let x where x.hasSuffix("pepper"):
            vegetableComment = "Is it a spicy \(x)?"
        default:
            vegetableComment = "Everything tastes good in soup."
        }
        println("vegetableComment:" + vegetableComment)
        
        let interestingNumbers = [
            "Prime": [2, 3, 5, 7, 11, 13],
            "Fibonacci": [1, 1, 2, 3, 5, 8],
            "Square": [1, 4, 9, 16, 25],
            "Mountain": [99, 2, 34],
        ]
        var largest = 0
        for (kind, numbers) in interestingNumbers {
            for number in numbers {
                if number > largest {
                    largest = number
                }
            }
        }
        println("largest number is :" + String(largest))
        
        var n = 2
        while n < 100 {
            n = n * 2
        }
        println("n :" + String(n))
        
        var m = 2
        do {
            m = m * 2
        } while m < 100
        println("m :" + String(m))
        
        var firstForLoop = 0
        for i in 0..<4 {
            firstForLoop += i
        }
        println("firstForLoop :" + String(firstForLoop))
        
        var secondForLoop = 0
        for var i = 0; i < 4; ++i {
            secondForLoop += i
        }
        println("secondForLoop :" + String(secondForLoop))
    }
    
    func loadAddressURL() {
        webView.scalesPageToFit = true;
        let requestURL = NSURL(string:targetURL)
        let req = NSURLRequest(URL:requestURL)
        webView.loadRequest(req)
    }
    
}

