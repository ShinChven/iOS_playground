//
//  ViewController.swift
//  NavigateFromOnStoryboardToAnother
//
//  Created by ShinChven Zhang on 15/4/26.
//  Copyright (c) 2015年 ShinChven Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func navigateToAnotherStoryboardFile(sender: UIButton) {
        // use filename Second to file Second.storyboard
        var sb:UIStoryboard = UIStoryboard(name:"Second",bundle: NSBundle(forClass: self.dynamicType))
        // use storyboard id "second" to find SecondViewController in Second.storyboard
        var secondViewController = sb.instantiateViewControllerWithIdentifier("second") as! SecondViewController;
        // present view controller
        self.presentViewController(secondViewController, animated: true, completion: {
            
        })
    }

}

