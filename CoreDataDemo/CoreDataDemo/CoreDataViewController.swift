//
//  CoreDataViewController.swift
//  CoreDataDemo
//
//  Created by ShinChven Zhang on 15/8/23.
//  Copyright (c) 2015年 ShinChven Zhang. All rights reserved.
//

import UIKit
import CoreData

class CoreDataViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext!
        

        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        loadTableData()
        
    }
    
    var dataArr:Array<AnyObject> = []
    
    var context:NSManagedObjectContext!
    
    @IBOutlet weak var userTable: UITableView!
    
    @IBOutlet weak var userNameInput: UITextField!
    

    @IBAction func addUser(sender: UIButton) {
        
        // TODO: 添加
        
        if userNameInput.text == "" {
            return
        }else{
            if (context != nil) {
                var row: AnyObject = NSEntityDescription.insertNewObjectForEntityForName("User", inManagedObjectContext: context)
                row.setValue(userNameInput.text, forKey: "userName")
                row.setValue(28, forKey: "userAge")
                self.context.save(nil)
                userNameInput.text = ""
                
                loadTableData()
               
            }
        }
        
    }
    
    func loadTableData(){
        // TODO: 查询
        
        var f = NSFetchRequest(entityName: "User")
        dataArr = context.executeFetchRequest(f, error: nil)!
        
        userTable.reloadData()

    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("user_cell", forIndexPath: indexPath) as! UITableViewCell
        var user:AnyObject = dataArr[indexPath.row]
        cell.textLabel?.text = user.valueForKey("userName") as? String
        var userAge = user.valueForKey("userAge") as? Int
        cell.detailTextLabel!.text = "\(userAge!)"
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        var user = dataArr[indexPath.row] as! NSManagedObject
        
        var vc = storyboard?.instantiateViewControllerWithIdentifier("UserContent") as! UserViewController
        vc.userObject = user
        presentViewController(vc, animated: true, completion: nil)
        
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
