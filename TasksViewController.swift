//
//  TasksViewController.swift
//  getOrganised
//
//  Created by Kwame Nketia on 19/10/17.
//  Copyright © 2017 Kwame Nketia. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // Configure the cell...
        
        if tableView ==  homeWorkList {
            
            cell.textLabel?.text = homeWorkName[indexPath.row]
        
        }else if tableView == assessmentList {
            
            cell.textLabel?.text = assessmentName[indexPath.row] 
        
        }
        return cell
    }
    
    @IBOutlet weak var homeWorkList: UITableView!
    @IBOutlet weak var assessmentList: UITableView!
    

 
 
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        if tableView == homeWorkList{
    
            return homeWorkName.count
        
                }else if tableView == assessmentList {
            
                    return assessmentName.count
            
            }
        
            return 2
        }
    
    // is used to delete a cell
     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        // if the user swipes left or right on the cell they can delete the homework task with the name and date
        if editingStyle == UITableViewCellEditingStyle.delete && tableView == homeWorkList
            
        {
            homeWorkName.remove(at: indexPath.row)
            homeWorkDueDate.remove(at: indexPath.row)
            tableView.reloadData()
       
            // if the user swipes left or right on the cell they can delete the assessment task with the name and date
        }else if editingStyle == UITableViewCellEditingStyle.delete && tableView == assessmentList {
            
            assessmentName.remove(at: indexPath.row)
            assessmentDueDate.remove(at: indexPath.row)
            tableView.reloadData()
            
        }
}

    
    
    
}
 


