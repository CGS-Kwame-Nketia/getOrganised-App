//
//  display_subject_ViewController.swift
//  getOrganised
//
//  Created by Kwame Nketia on 7/10/17.
//  Copyright © 2017 Kwame Nketia. All rights reserved.
//

import UIKit

// this view controller displays the subject that the user tapped
class display_subject_ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        display_Subject_Name.text = subjects[itemInArray]
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ _animated: Bool) {
        super.viewDidAppear(true)

        
        
    }
    
    @IBOutlet weak var display_Subject_Name: UILabel!
    
    
    
    
  
    
    
}
