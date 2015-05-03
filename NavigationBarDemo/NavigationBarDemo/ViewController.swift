//
//  ViewController.swift
//  NavigationBarDemo
//
//  Created by ShinChven Zhang on 15/5/3.
//  Copyright (c) 2015年 ShinChven Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.navigationItem.title = "hello Navigation"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

