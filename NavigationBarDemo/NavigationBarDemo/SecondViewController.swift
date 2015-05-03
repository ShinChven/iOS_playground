//
//  SecondViewController.swift
//  NavigationBarDemo
//
//  Created by ShinChven Zhang on 15/5/3.
//  Copyright (c) 2015年 ShinChven Zhang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        // modify your navigationbar in single view here
        self.navigationItem.title = "Second View"
        
        // modify navigationbar style in single view
        // if you modify uinavigationbar here, it will affect UINavigationBar in all viewcontroller. Because they all use the same UINavigationBar.
        // However the navigation bar title will not be affect in modification here.
        self.navigationController?.navigationBar.barTintColor = UIColor.orangeColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
