//
//  GroceryListTableViewController.swift
//  Grocery List
//
//  Created by Muhammad Aamir on 10/08/2017.
//  Copyright © 2017 Muhammad Aamir. All rights reserved.
//

import UIKit

class GroceryListTableViewController: UITableViewController {

    var Groceries = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    @IBAction func addAction(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "GroceryList", message: "What you want to buy", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addTextField { (textField: UITextField) in
            
        }
        
        let addAction = UIAlertAction(title: "Add", style: UIAlertActionStyle.default) { [weak self] (action: UIAlertAction) in
            let textField = alertController.textFields?.first
            self?.Groceries.append(textField!.text!)
            self?.tableView.reloadData()
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: nil)
        
        alertController.addAction(addAction)
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
        }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Groceries.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groceryCell", for: indexPath)
        cell.textLabel?.text = self.Groceries[indexPath.row]
        return cell
    }
    

}
	
