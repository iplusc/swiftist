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
        
        var button = UIButton(frame: CGRectMake(160, 30, 100, 50))
        button.setTitle("WebView", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        
        button.layer.cornerRadius = 10   //角丸
        button.layer.borderWidth = 1     //枠線
        
        button.addTarget(self, action: "btn:", forControlEvents:.TouchUpInside)
        self.view.addSubview(button)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func btn(sender: UIButton){
        println("button push to show WebView!")
        var next = WebViewController()
        self.presentViewController(next, animated: true, completion: nil)
    }
}

