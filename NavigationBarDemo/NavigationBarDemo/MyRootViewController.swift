//
//  MyRootViewController.swift
//  NavigationBarDemo
//
//  Created by ShinChven Zhang on 15/5/5.
//  Copyright (c) 2015年 ShinChven Zhang. All rights reserved.
//

import UIKit

class MyRootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func pushNavigationViewControllerWithCode(sender: UIButton) {
        
        // push a viewcontroller with navigationcontroller that is not linked in storyboard.
        var sb:UIStoryboard = UIStoryboard(name:"Main",bundle: NSBundle(forClass: self.dynamicType))
        // use storyboard id "second" to find SecondViewController in Second.storyboard
        var pushedViewController = sb.instantiateViewControllerWithIdentifier("pushed") as! PushedViewController;
        // present view controller
        self.navigationController?.pushViewController(pushedViewController, animated: true)
        
        
        
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
