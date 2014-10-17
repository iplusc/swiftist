//
//  TopViewController.swift
//  swiftist
//
//  Created by guo on 2014/10/15.
//  Copyright (c) 2014年 Mountain. All rights reserved.
//

import Foundation
import UIKit

class TopViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var webViewBtn = UIButton(frame: CGRectMake(160, 30, 100, 50))
        webViewBtn.setTitle("WebView", forState: .Normal)
        webViewBtn.setTitleColor(UIColor.blueColor(), forState: .Normal)
        
        webViewBtn.layer.cornerRadius = 10   //角丸
        webViewBtn.layer.borderWidth = 1     //枠線
        
        webViewBtn.addTarget(self, action: "webViewBtn:", forControlEvents:.TouchUpInside)
        self.view.addSubview(webViewBtn)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewBtn(sender: UIButton){
        println("button push to show WebView!")
        var next = WebViewController()
        self.presentViewController(next, animated: true, completion: nil)
    }
}

