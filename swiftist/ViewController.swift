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
    
    var targetURL = "http://www.yahoo.co.jp"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadAddressURL()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadAddressURL() {
        let requestURL = NSURL(string:targetURL)
        let req = NSURLRequest(URL:requestURL)
        webView.loadRequest(req)
    }
    
}

