//
//  MultiCellViewController.swift
//  MultiCell
//
//  Created by ShinChven Zhang on 16/2/13.
//  Copyright © 2016年 atlassc. All rights reserved.
//

import UIKit

class MultiCellViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var thisTable: UITableView!

    override func viewDidLoad() {
      
        super.viewDidLoad()
   
        self.thisTable.registerNib(UINib(nibName: "cell0", bundle: nil), forCellReuseIdentifier: "cell0")
        self.thisTable.registerNib(UINib(nibName: "cell1", bundle: nil), forCellReuseIdentifier: "cell1")
        
        self.thisTable.estimatedRowHeight = 88
        self.thisTable.rowHeight = UITableViewAutomaticDimension


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var cellheight:CGFloat = 0
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell?
//        
//        tableView.registerNib(UINib(nibName: "cell0", bundle: nil), forCellReuseIdentifier: "cell0")
//        tableView.registerNib(UINib(nibName: "cell1", bundle: nil), forCellReuseIdentifier: "cell1")
        
        let type = (indexPath.row+1)%2
        
        if type == 1 {
            cell = tableView.dequeueReusableCellWithIdentifier("cell1", forIndexPath: indexPath)
        }else{
            cell = tableView.dequeueReusableCellWithIdentifier("cell0", forIndexPath: indexPath)
        }
        
        
        return cell!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
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
