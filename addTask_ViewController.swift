//
//  addTask_ViewController.swift
//  getOrganised
//
//  Created by Kwame Nketia on 15/10/17.
//  Copyright © 2017 Kwame Nketia. All rights reserved.
//

import UIKit
import UserNotifications

var reminder = UILocalNotification()


class addTask_ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        if let x = UserDefaults.standard.value (forKey: "homework") as? String {
            
            taskName.text = x
            
        }
        
        if let z = UserDefaults.standard.value(forKey: "homeworkDate") as? Date {
            
                chooseDate.date = z
            
        }
        
       
        if let y = UserDefaults.standard.value (forKey: "assessment") as? String {
            
            taskName.text = y
            
        }
        
        if let v = UserDefaults.standard.value (forKey: "assessmentDate") as? Date {
            
            chooseDate.date = v
        }
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var displayTaskType: UILabel!
    @IBOutlet weak var taskSwitch: UISwitch!
    @IBOutlet weak var chooseDate: UIDatePicker!
    @IBOutlet weak var taskName: UITextField!
    var type = ["Assesment", "Homework"]
    
    
    @IBAction func UItaskType(_ sender: UISwitch) {
        
        if sender.isOn == true {
            
            displayTaskType.text = type[0]
        
        } else if sender.isOn == false {
            
            displayTaskType.text = type[1]

            
        }
        
    }
    
    
    
// when the save button is tapped this function saves all the data
    @IBAction func saveTaskData(_ sender: UIButton) {
        

        switch displayTaskType.text  {
           
        case "Assessment"?:
            assessmentName.append(taskName.text!)
            assessmentDueDate.append(chooseDate.date)
            UserDefaults.standard.set(assessmentName, forKey: "assessment")
            UserDefaults.standard.set(assessmentDueDate, forKey: "assessmentDate")
            reminder.fireDate = chooseDate.date
            reminder.alertBody = "The \(taskName.text!) is due today!!"
            
      

        case "Homework"?:
            
/*Add  */       homeWorkName.append(taskName.text!)
            homeWorkDueDate.append(chooseDate.date)
            
            UserDefaults.standard.set(taskName.text, forKey: "homework")
            UserDefaults.standard.set(chooseDate.date, forKey: "homeworkDate")
            reminder.fireDate = chooseDate.date
            reminder.alertBody = "The \(taskName.text!) is due today!!"


        case .none:
            print("nothing")
        case .some(_):
            print("something")
        }
}


}
        
        


    

