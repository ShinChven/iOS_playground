//
//  UserViewController.swift
//  CoreDataDemo
//
//  Created by ShinChven Zhang on 15/8/23.
//  Copyright (c) 2015年 ShinChven Zhang. All rights reserved.
//

import UIKit
import CoreData

class UserViewController: UIViewController {
    
    var userObject:NSManagedObject!

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameInput.text = userObject.valueForKey("userName") as! String
        var age = userObject.valueForKey("userAge") as! Int
        userAgeInput.text = "\(age)"
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var userNameInput: UITextField!

    @IBOutlet weak var userAgeInput: UITextField!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateUser(sender: AnyObject) {
        // todo: 更改
        userObject.setValue(userNameInput.text, forKey: "userName")
        
        userObject.setValue(userAgeInput.text.toInt(), forKey: "userAge")
        
        userObject.managedObjectContext?.save(nil)
        
        self.dismissViewControllerAnimated(true, completion: { () -> Void in
            
        })
        
        
    }

    
    @IBAction func deleteUser(sender: AnyObject) {
        // TODO: 删除
        
        var context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext!
        context.deleteObject(userObject)
        context.save(nil)
        
        
        self.dismissViewControllerAnimated(true, completion: { () -> Void in
            
        })
        


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
