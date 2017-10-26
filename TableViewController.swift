//
//  TableViewController.swift
//  getOrganised
//
//  Created by Kwame Nketia on 28/9/17.
//  Copyright © 2017 Kwame Nketia. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    

    // MARK: - Table view data source

    let subject = "subjects"
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return subjects.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

            cell.textLabel?.text = subjects[indexPath.row]
        
            UserDefaults.standard.set(cell.textLabel?.text,forKey: "label")
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        itemInArray = indexPath.row
        
            performSegue(withIdentifier: "segue", sender: self)
    
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete
        
        {
           subjects.remove(at: indexPath.row)
            
                tableView.reloadData()
        }
    }
    
 override func viewDidLoad() {
        super.viewDidLoad()
    
    if let x = UserDefaults.standard.object(forKey: "label") as? String {
    
        subjects[itemInArray] = x
    }
    
    
    
    }

}
