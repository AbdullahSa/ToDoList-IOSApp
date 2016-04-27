//
//  FirstViewController.swift
//  ToDoList
//
//  Created by Adk on 22/04/16.
//  Copyright © 2016 Adk. All rights reserved.
//

import UIKit

var toDoList=[String]()

class FirstViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    

    @IBOutlet var toDoListTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if NSUserDefaults.standardUserDefaults().objectForKey("arr") != nil {
            toDoList=NSUserDefaults.standardUserDefaults().objectForKey("arr")! as! NSArray as! [String]
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text=toDoList[indexPath.row]
        
        return cell
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
    toDoListTable.reloadData()
    }
    
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.Delete {
                toDoList.removeAtIndex(indexPath.row)
            
            NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "arr")
            
                tableView.reloadData()
        }
    }


}

