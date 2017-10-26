//
// append_Subject_ViewController.swift
//  getOrganised
//
//  Created by Kwame Nketia on 28/9/17.
//  Copyright © 2017 Kwame Nketia. All rights reserved.
//

import UIKit

class append_Subject_ViewController: UIViewController {

    let y = "subjectName"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if (UserDefaults.standard.value(forKey: y) as? String) != nil {
            
            subject_TextField.text = ""
            
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var subject_TextField: UITextField!
    
    
    @IBAction func addSubjectName(_ sender: UIButton)
    
    {
        // adds the subject to the textfield
        subjects.append(subject_TextField.text!)
        
        UserDefaults.standard.set(subject_TextField.text, forKey: "subjectName")
        
    }

    
}
