//
//  ViewController.swift
//  getOrganised
//
//  Created by Kwame Nketia on 18/9/17.
//  Copyright © 2017 Kwame Nketia. All rights reserved.
//

import UIKit
import UserNotifications


// stores the name of the user
var name = ""

// stores the subjects that the user has added
var subjects = [String]()


// stores the name of homework 
var homeWorkName = [String]()

var assessmentName = [String]()

// stores the due date of the task
var homeWorkDueDate = [Date]()

// stores the date of assessments
var assessmentDueDate = [Date]()

// is used to select any certain item in the subject array
var itemInArray = 0


var type = [String]()




class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view. 
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {
            didAllow, error in
        
            
        
        })
    }




    // is used to display
    @IBOutlet weak var studentName: UILabel!


    
    @IBAction func editName(_ sender: UIButton) {
   
        
    
        
    }
    
    

}

