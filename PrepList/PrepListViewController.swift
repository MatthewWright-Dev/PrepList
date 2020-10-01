//
//  PrepListViewController.swift
//  PrepList
//
//  Created by Matthew Wright on 4/22/20.
//  Copyright © 2020 Matthew Wright. All rights reserved.
//

import UIKit

class PrepListViewController: UITableViewController {
    
    var prepLists : [[String : Any]] = []
    var newList: [String : Any] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepLists = [["Title" : "First Quake", "Scenario" : "Earthquake", "Men": 1, "Women": 1, "Children" : 1, "Date" : Date()],
                    ["Title" : "First Pandemic", "Scenario" : "Pandemic", "Men": 1, "Women": 1, "Children" : 1, "Date" : Date()]
        ]

    }

    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return prepLists.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)
        
        let current = prepLists[indexPath.row]
        
        cell.textLabel!.text = current["Title"] as? String
        cell.detailTextLabel!.text = current["Scenario"] as? String
        
        return cell
    }
    
    //DELETING THE CELL
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete)    {
            prepLists.remove(at: indexPath.item)
            
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    @IBAction func editAction(_ sender: UIBarButtonItem) {
        self.tableView.isEditing = !self.tableView.isEditing
        
        sender.title = (self.tableView.isEditing) ? "Done" : "Edit"
    }
    
    @IBAction func cancel(segue:UIStoryboardSegue) {
      
    }

    @IBAction func save(segue:UIStoryboardSegue) {
        let newListVC = segue.source as! NewListViewController
        newList = newListVC.toAdd
        prepLists.append(newList)
        tableView.reloadData()
    }


    
     //MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      //   Get the new view controller using segue.destination.
      //   Pass the selected object to the new view controller.
        if segue.identifier == "listSelected" {
 //           let destination = segue.destination as! ShopingListViewController
            let barViewControllers = segue.destination as! ListDetailTabBar
            let nav = barViewControllers.viewControllers![0] as! ShopingListViewController//UINavigationController
//            let destinationViewController = nav.topViewController as! ShopingListViewController
            
            let tableViewCell = sender as! UITableViewCell
            let indexPath = tableView.indexPath(for: tableViewCell)!
            nav.data = prepLists[indexPath.row]
            barViewControllers.data = prepLists[indexPath.row]
            
        }
    }
    

}
