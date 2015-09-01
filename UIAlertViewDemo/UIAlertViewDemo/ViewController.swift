//
//  ViewController.swift
//  UIAlertViewDemo
//
//  Created by ShinChven Zhang on 15/9/1.
//  Copyright (c) 2015年 ShinChven Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    @IBAction func showAlert(sender: UIButton) {
     
        var alertController = UIAlertController(title: "标题", message: "这个是UIAlertController的默认样式", preferredStyle: UIAlertControllerStyle.Alert)
        var cancelAction = UIAlertAction(title: "取消", style: UIAlertActionStyle.Cancel, handler: nil)
        var okAction = UIAlertAction(title: "好的", style: UIAlertActionStyle.Default, handler: nil)
        var sure = UIAlertAction(title: "ok", style: UIAlertActionStyle.Destructive) { (sure) -> Void in
            NSLog("1111")
        }
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        alertController.addAction(sure)
        showViewController(alertController, sender: self)
        

    }
    
    @IBAction func showInputAlert(sender: UIButton) {
    
        var alertController = UIAlertController(title: "标题", message: "这个是UIAlertController的默认样式", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addTextFieldWithConfigurationHandler {
            (textField: UITextField!) -> Void in
            textField.placeholder = "瓶"
            textField.keyboardType = UIKeyboardType.NumberPad
        }
        alertController.addTextFieldWithConfigurationHandler {
            (textField: UITextField!) -> Void in
            textField.placeholder = "箱"
            textField.keyboardType = UIKeyboardType.NumberPad
        }
        
        var cancelAction = UIAlertAction(title: "取消", style: UIAlertActionStyle.Cancel, handler: {（cancelAction）-> Void in
            var maxUnitCount = alertController.textFields?.first as? UITextField
            var minUnitCount = alertController.textFields?.last as? UITextField
            
            NSLog("\(maxUnitCount?.text.toInt())")
            NSLog("\(minUnitCount?.text.toInt())")
            
        })
        var okAction = UIAlertAction(title: "好的", style: UIAlertActionStyle.Default, handler: nil)
        
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        
        showViewController(alertController, sender: self)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

