//
//  AutoCellHeightViewController.swift
//  AutoCellHeight
//
//  Created by ShinChven Zhang on 16/2/13.
//  Copyright © 2016年 atlassc. All rights reserved.
//

import UIKit

class AutoCellHeightViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.estimatedRowHeight = 88
        self.tableView.rowHeight = UITableViewAutomaticDimension

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    @IBOutlet weak var tableView: UITableView!
    let data = ["2016-02-13 17:23:21.438 MultiCell[10812:354496] Warning once only: Detected a case where constraints ambiguously suggest a height of zero for a tableview cell's content view. We're considering the collapse unintentional and using standard height instead.","sdkfjklaskdfajklsdfjlasl;dfjlkasdf"]
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        let label = cell.viewWithTag(1) as! UILabel
        
        let type = (indexPath.row+1) % 2
        if type == 1 {
            label.text = data[0]
        }else{
            label.text = data[1]
        }
        
        return cell
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
