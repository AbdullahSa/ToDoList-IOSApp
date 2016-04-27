//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Adk on 22/04/16.
//  Copyright © 2016 Adk. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var eklenecekToDo: UITextField!
    
    
    @IBAction func ekleBtn(sender: AnyObject) {
        
        toDoList.append(eklenecekToDo.text!)
        
        eklenecekToDo.text=""
        
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "arr")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    


}

