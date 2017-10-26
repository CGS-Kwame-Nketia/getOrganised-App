//
//  Name_ViewController.swift
//  getOrganised
//
//  Created by Kwame Nketia on 10/10/17.
//  Copyright © 2017 Kwame Nketia. All rights reserved.
//

import UIKit

class Name_ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func saveStudentName(_ sender: UIButton) {
        
        nameTextField.text = name
        
    }
    
        

}
