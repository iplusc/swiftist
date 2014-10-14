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
        tryFunctionsRClosures()
        tryObjectsRClasses()
        tryEnumerationsRStructures()
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
    
    func tryFunctionsRClosures() {
        func greet(name: String, day: String) -> String {
            return "Hello \(name), today is \(day)."
        }
        println("green function output: " + greet("Bob", "Tuesday"))
        
        func getGasPrices() -> (Double, Double, Double) {
            return (3.59, 3.69, 3.79)
        }
        println(getGasPrices())
        
        func sumOf(numbers: Int...) -> Int {
            var sum = 0
            for number in numbers {
                sum += number
            }
            return sum
        }
        println(sumOf())
        println(sumOf(42, 597, 12))
        
        func returnFifteen() -> Int {
            var y = 10
            func add() {
                y += 5
            }
            add()
            return y
        }
        println(returnFifteen())
        
        func makeIncrementer() -> (Int -> Int) {
            func addOne(number: Int) -> Int {
                return 1 + number
            }
            return addOne
        }
        var increment = makeIncrementer()
        println(increment(7))
        
        func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {
            for item in list {
                if condition(item) {
                    return true
                }
            }
            return false
        }
        func lessThanTen(number: Int) -> Bool {
            return number < 10
        }
        var numbers = [20, 19, 7, 12]
        println(hasAnyMatches(numbers, lessThanTen))
        
        println(numbers.map({
            (number: Int) -> Int in
            let result = 3 * number
            return result
        }))
    }

    func tryObjectsRClasses() {
        class Shape {
            var numberOfSides = 0
            func simpleDescription() -> String {
                return "A shape with \(numberOfSides) sides."
            }
        }
        var shape = Shape()
        shape.numberOfSides = 7
        var shapeDescription = shape.simpleDescription()
        println("shapeDescription: " + shapeDescription)
        
        class NamedShape {
            var numberOfSides: Int = 0
            var name: String
            
            init(name: String) {
                self.name = name
            }
            
            func simpleDescription() -> String {
                return "A shape with \(numberOfSides) sides."
            }
        }
        
        class Square: NamedShape {
            var sideLength: Double
            
            init(sideLength: Double, name: String) {
                self.sideLength = sideLength
                super.init(name: name)
                numberOfSides = 4
            }
            
            func area() ->  Double {
                return sideLength * sideLength
            }
            
            override func simpleDescription() -> String {
                return "A square with sides of length \(sideLength)."
            }
        }
        let test = Square(sideLength: 5.2, name: "my test square")
        println("Square \(test.area())")
        println("Square simpleDescription: " + String(test.simpleDescription()))
        
        class EquilateralTriangle: NamedShape {
            var sideLength: Double = 0.0
            
            init(sideLength: Double, name: String) {
                self.sideLength = sideLength
                super.init(name: name)
                numberOfSides = 3
            }
            
            var perimeter: Double {
                get {
                    return 3.0 * sideLength
                }
                set {
                    sideLength = newValue / 3.0
                }
            }
            
            override func simpleDescription() -> String {
                return "An equilateral triagle with sides of length \(sideLength)."
            }
        }
        var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
        println("triangle.perimeter: + \(triangle.perimeter)")
        triangle.perimeter = 9.9
        println("triangle.sideLength: + \(triangle.sideLength)")
        
        class TriangleAndSquare {
            var triangle: EquilateralTriangle {
                willSet {
                    square.sideLength = newValue.sideLength
                }
            }
            var square: Square {
                willSet {
                    triangle.sideLength = newValue.sideLength
                }
            }
            init(size: Double, name: String) {
                square = Square(sideLength: size, name: name)
                triangle = EquilateralTriangle(sideLength: size, name: name)
            }
        }
        var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
        println("triangleAndSquare.square.sideLength: + \(triangleAndSquare.square.sideLength)")
        println("triangleAndSquare.triangle.sideLength: + \(triangleAndSquare.triangle.sideLength)")
        triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
        println("triangleAndSquare.triangle.sideLength: + \(triangleAndSquare.triangle.sideLength)")
        
        class Counter {
            var count: Int = 0
            func incrementBy(amount: Int, numberOfTimes times: Int) {
                count += amount * times
            }
        }
        var counter = Counter()
        counter.incrementBy(2, numberOfTimes: 7)
        println("counter.count:" + String(counter.count))
        
        let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
        let sideLength = optionalSquare?.sideLength
        println("optionalSquare?.sideLength: + \(sideLength)")
    }
    
    func tryEnumerationsRStructures() {
        enum Rank: Int {
            case Ace = 1
            case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
            case Jack, Queen, King
            func simpleDescription() -> String {
                switch self {
                case .Ace:
                    return "ace"
                case .Jack:
                    return "jack"
                case .Queen:
                    return "queen"
                case .King:
                    return "king"
                default:
                    return String(self.toRaw())
                }
            }
        }
        let ace = Rank.Ace
        println("ace: \(ace)")
        let aceRawValue = ace.toRaw()
        println("ace.toRaw: \(aceRawValue)")
        
        if let convertedRank = Rank.fromRaw(3) {
            let threeDescription = convertedRank.simpleDescription()
            println("threeDescription: \(threeDescription)")
        }
        
        enum Suit {
            case Spades, Hearts, Diamonds, Clubs
            func simpleDescription() -> String {
                switch self {
                case .Spades:
                    return "spades"
                case .Hearts:
                    return "hearts"
                case .Diamonds:
                    return "diamonds"
                case .Clubs:
                    return "clubs"
                }
            }
            
        }
        let hearts = Suit.Hearts
        let heartsDescription = hearts.simpleDescription()
        println("hearts: \(hearts)")
        println("heartsDescription: \(heartsDescription)")
        
        struct Card {
            var rank: Rank
            var suit: Suit
            func simpleDescription() -> String {
                return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
            }
        }
        let threeOfSpades = Card(rank: .Three, suit: .Spades)
        let threeOfSpadesDescription = threeOfSpades.simpleDescription()
        println("threeOfSpades: \(threeOfSpades)")
        println("threeOfSpadesDescription: \(threeOfSpadesDescription)")
        
        enum ServerResponse {
            case Result(String, String)
            case Error(String)
        }
        
        let success = ServerResponse.Result("6:00 am", "8:09 pm")
        let failure = ServerResponse.Error("Out of cheese.")
        println("success: \(success)")
        println("failure: \(failure)")
        switch success {
        case let .Result(sunrise, sunset):
            let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
            println("serverResponse + \(serverResponse)")
        case let .Error(error):
            let serverResponse = "Failure...  \(error)"
            println("serverResponse + \(serverResponse)")
        }
    }
    
    func loadAddressURL() {
        webView.scalesPageToFit = true;
        let requestURL = NSURL(string:targetURL)
        let req = NSURLRequest(URL:requestURL)
        webView.loadRequest(req)
    }
    
}

