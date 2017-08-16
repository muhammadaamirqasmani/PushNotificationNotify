//
//  TodoTableListTableViewController.swift
//  Todo List
//
//  Created by Muhammad Aamir on 10/07/2017.
//  Copyright © 2017 Muhammad Aamir. All rights reserved.
//

import UIKit

class TodoTableListTableViewController: UITableViewController{
    var list = ["item 01","item 02","item 03","item 04","item 05"]
    
    @IBOutlet weak var todoTable: UITableView!
    
        override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(list)
        return (list.count)
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return(cell)
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete{
        self.list.remove(at: indexPath.row)
            todoTable.reloadData()
            print(todoTable)
        }
        
        
    }
    
}
