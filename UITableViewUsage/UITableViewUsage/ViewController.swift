//
//  ViewController.swift
//  UITableViewUsage
//
//  Created by ShinChven Zhang on 15/4/22.
//  Copyright (c) 2015年 ShinChven Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        names.append("neo")
        names.append("is")
        names.append("the")
        names.append("one")
        self.clearLines()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var mTableView: UITableView!
    
    var names:Array<String> = Array<String>()
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /**
    * this is how to clear extra empty listview items and background color of UITableView
    */
    func clearLines(){
        // clear background color
        self.mTableView.backgroundView = nil
        self.mTableView.backgroundColor = UIColor.clearColor()
        // clear extra empty listview
        var foot:UIView = UIView()
        foot.backgroundColor=UIColor.clearColor()
        self.mTableView.tableFooterView=foot
    }
    
    
    // *********** if you would like to do something by clicking items of UITableViewCell, do it hell,
    // *********** plaese do not do it in didDeselectedRowAtIndexPath, it would return the last cell you selected.
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("\(indexPath.row):\(names[indexPath.row])")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //var cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("mCell") as! UITableViewCell
        // ****** please do not use the method above, it will return nil if you do not assign the indexPath like below
        var cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("mCell", forIndexPath: indexPath) as! UITableViewCell
        var mLabel:UILabel = cell.viewWithTag(1) as! UILabel // if you unwrapped nil from here please check out comment above
        mLabel.text = names[indexPath.row]
        return cell
    }
    
    
}

