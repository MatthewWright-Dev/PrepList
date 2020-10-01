//
//  ShopingListViewController.swift
//  PrepList
//
//  Created by Matthew Wright on 4/23/20.
//  Copyright © 2020 Matthew Wright. All rights reserved.
//

import UIKit

class ShopingListViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let cellTableIdentifier = "CellTableIdentifier"
    var items : [String : Int] = [ : ]
    var mealList : [[String : Any]] = []
    var data : [String : Any] = [ : ]
    var servings : Int = 0
    var days : Int = 0
    var meals = [String : [Any]]()
    var Ingredients = [String : [String : Any?]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabbar = tabBarController as! ListDetailTabBar
        items = tabbar.items
        mealList = tabbar.mealList
        data = tabbar.data
        servings = tabbar.servings
        days = tabbar.days
        meals = tabbar.meals
        Ingredients = tabbar.Ingredients
        
        tableView.register(ShoppingCell.self,
                           forCellReuseIdentifier: cellTableIdentifier)
        let xib = UINib(nibName: "ShopingListCell", bundle: nil)
        tableView.register(xib,
                           forCellReuseIdentifier: cellTableIdentifier)
        //tableView.rowHeight = 190
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        let tabbar = tabBarController as! ListDetailTabBar
        tabbar.items = items
        tabbar.mealList = mealList
        tabbar.data = data
        tabbar.servings = servings
        tabbar.days = days
        //tabbar.meals = meals
        tabbar.Ingredients = Ingredients
    }

    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(
            withIdentifier: cellTableIdentifier, for: indexPath)
            as! ShoppingCell
        
        //print(items.count)
        
        //let rowData = items[indexPath.row]
        cell.item = Array(items.keys)[indexPath.row]
        let details = Ingredients[Array(items.keys)[indexPath.row]]
        //cell.size = details!["Container"] as! String
        let container = details!["Container"] as! String
        let servingSize = details!["Servings"] as! Int
        let totalNeeded = Int(ceil(Double(servings) / Double(servingSize)))
        cell.quantity = String(totalNeeded) + " x " + container
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           
           let count = items.count
           return count;
           
       
       }


}
