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
    }
    
    func loadAddressURL() {
        webView.scalesPageToFit = true;
        let requestURL = NSURL(string:targetURL)
        let req = NSURLRequest(URL:requestURL)
        webView.loadRequest(req)
    }
    
}

