//
//  CreateTaskViewController.swift
//  Doit
//
//  Created by Jordan Lejcar on 11/1/17.
//  Copyright © 2017 Jordan Lejcar. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskNameTextField: UITextField!
    
    var previousVC = TasksViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func addTapped(_ sender: Any) {
        let task = Task ()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
   
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
 
    }
}
