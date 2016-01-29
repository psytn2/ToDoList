//
//  ViewController.swift
//  ToDoList
//
//  Created by Tai Nguyen Bui on 29/01/16.
//  Copyright © 2016 Tai Nguyen Bui. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController,  UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    var textField : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
            self.tableView.dataSource = self
            self.tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func configurationTextField(tField : UITextField){
        tField.placeholder = "Enter new task"
        self.textField = tField
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    @IBAction func addButtonPressed(sender: AnyObject) {
        displayAddTaskPopup()
    }
    
    func displayAddTaskPopup()
    {
        let alert = UIAlertController(title: "Add New Task", message: nil, preferredStyle: .Alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel)
            {
                UIAlertAction in
                alert.dismissViewControllerAnimated(true, completion: nil)
        }
        
        let saveAction = UIAlertAction(title: "Save", style: UIAlertActionStyle.Default)
            {
                UIAlertAction in
                self.saveNewTask()
        }
        
        alert.addTextFieldWithConfigurationHandler(configurationTextField)
        alert.addAction(cancelAction)
        alert.addAction(saveAction)
        
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    func saveNewTask(){
        print("Task Saved!")
    }
}

