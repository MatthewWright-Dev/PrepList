//
//  ListDetailTabBar.swift
//  PrepList
//
//  Created by Matthew Wright on 4/23/20.
//  Copyright © 2020 Matthew Wright. All rights reserved.
//

import UIKit

class ListDetailTabBar: UITabBarController {
    
    
    
    var meals = ["Breakfast" : [["Name" : "Oatmeal", "Image" :  #imageLiteral(resourceName: "oatmeal"), "Ingredients" : ["Instant Oatmeal"], "Meal" : "Breakfast"],
        ["Name" : "Spam and Eggs", "Image" : #imageLiteral(resourceName: "spam and eggs"), "Ingredients" : ["Dehydrated Eggs", "Spam"], "Meal" : "Breakfast"],
        ["Name" : "Pancakes and Hashbrowns", "Image" : #imageLiteral(resourceName: "pancakes and hashbrowns"), "Ingredients" : ["Pancake Mix", "Dehydrated Hashbrowns"], "Meal" : "Breakfast"],
        ["Name" : "Protein Bars", "Image" : #imageLiteral(resourceName: "protein"), "Ingredients" : ["Protein Bars"], "Meal" : "Breakfast"],
        ["Name" : "Cereal", "Image" : #imageLiteral(resourceName: "cereal"), "Ingredients" : ["Cereal", "Powdered Milk"], "Meal" : "Breakfast"]],
        
//                 "Snacks" : [["Snack" : ["Nuts"]], ["Snack" : ["Dehydrated Fruit"]], ["Snack" : ["]Granola Bars"]], ["Snack" : ["Crackers"]], ["Snack" : ["Peanut Butter"]]],
    
        "Lunch" : [["Name" : "Tuna Salad", "Image" : #imageLiteral(resourceName: "tuna"), "Ingredients" : ["Tuna","Flour","Yeast","Salt","Mayonaisse","Oil"], "Meal" : "Lunch"],
            ["Name" : "Chicken Salad", "Image" : #imageLiteral(resourceName: "chicken salad"), "Ingredients" : ["Chicken","Flour","Yeast","Salt","Mayonaisse","Oil"], "Meal" : "Lunch"],
            ["Name" : "PBJ", "Image" : #imageLiteral(resourceName: "pbj"), "Ingredients" : ["Peanut Butter","Jelly","Flour","Yeast","Salt","Mayonaisse","Oil"], "Meal" : "Lunch"],
            ["Name" : "Macaroni and Cheese", "Image" : #imageLiteral(resourceName: "mac and cheese"), "Ingredients" : ["Macaroni and Cheese","Powdered Milk","Oil"], "Meal" : "Lunch"],
            //["Name" : "Ramen Noodles", "Image" : nil, "Ingredients" : ["Ramen Noodles"], "Meal" : "Lunch"],
            ["Name" : "Can of Soup", "Image" : #imageLiteral(resourceName: "soup"), "Ingredients" : ["Soup"], "Meal" : "Lunch"]],
        
        "Dinner" : [["Name" : "Spaghetti", "Image" : #imageLiteral(resourceName: "spaghetti"), "Ingredients" : ["Dried Pasta","Oil","Pasta Sauce"], "Meal" : "Dinner"],
                    ["Name" : "Spam Burgers", "Image" : #imageLiteral(resourceName: "spam burger"), "Ingredients" : ["Spam","Flour", "Yeast", "Salt"], "Meal" : "Dinner"],
                    ["Name" : "Spaghetti", "Image" : #imageLiteral(resourceName: "spaghetti"), "Ingredients" : ["Dried Pasta","Oil","Pasta Sauce"], "Meal" : "Dinner"],
                    ["Name" : "Chili", "Image" : #imageLiteral(resourceName: "chili"), "Ingredients" : ["Canned Chili","Flour", "Yeast", "Salt"], "Meal" : "Dinner"],
                    ["Name" : "Rice and Beans", "Image" : #imageLiteral(resourceName: "rice and beans"), "Ingredients" : ["Rice","Beans"], "Meal" : "Dinner"]]]
            
    var Ingredients = ["Instant Oatmeal" : [ "Container" : "Box", "Servings" : 8, "Remaining Servings:" : 0, "Image" : nil],
        "Spam" : [ "Container" : "Can", "Servings" : 4, "Remaining Servings:" : 0, "Image" : nil],
        "Dehydrated Eggs" : [ "Container" : "Box", "Servings" : 4, "Remaining Servings:" : 0, "Image" : nil],
        "Pancake Mix" : [ "Container" : "Box", "Servings" : 24, "Remaining Servings:" : 0, "Image" : nil],
        "Dehydrated Hashbrowns" : ["Container" : "Box", "Servings" : 12, "Remaining Servings:" : 0, "Image" : nil],
        "Protein Bars" : ["Container" : "Box", "Servings" : 12, "Remaining Servings:" : 0, "Image" : nil],
        "Cereal" : ["Container" : "Box", "Servings" : 12, "Remaining Servings:" : 0, "Image" : nil],
        "Powdered Milk" : ["Container" : "Bag", "Servings" : 30, "Remaining Servings:" : 0, "Image" : nil],
        "Nuts" : ["Container" : "Can", "Servings" : 10, "Remaining Servings:" : 0, "Image" : nil],
        "Dehydrated Fruit" : ["Container" : "Bag", "Servings" : 5, "Remaining Servings:" : 0, "Image" : nil],
        
        "Granola Bars" : ["Container" : "Box", "Servings" : 10, "Remaining Servings:" : 0, "Image" : nil],
        "Crackers" : ["Container" : "Box", "Servings" : 10, "Remaining Servings:" : 0, "Image" : nil],
        "Peanut Butter" : ["Container" : "Jar", "Servings" : 25, "Remaining Servings:" : 0, "Image" : nil],
        "Tuna" : ["Container" : "Can", "Servings" : 2, "Remaining Servings:" : 0, "Image" : nil],
        "Flour" : ["Container" : "Bag", "Servings" : 40, "Remaining Servings:" : 0, "Image" : nil],
        "Yeast" : ["Container" : "Pack", "Servings" : 10, "Remaining Servings:" : 0, "Image" : nil],
        "Salt" : ["Container" : "Pack", "Servings" : 50, "Remaining Servings:" : 0, "Image" : nil],
        "Mayonaisse" : ["Container" : "Jar", "Servings" : 30, "Remaining Servings:" : 0, "Image" : nil],
        "Oil" : ["Container" : "Bottle", "Servings" : 40, "Remaining Servings:" : 0, "Image" : nil],
        "Chicken" : ["Container" : "Can", "Servings" : 2, "Remaining Servings:" : 0, "Image" : nil],
        "Jelly" : ["Container" : "Jar", "Servings" : 20, "Remaining Servings:" : 0, "Image" : nil],
        "Macaroni and Cheese" : ["Container" : "Box", "Servings" : 4, "Remaining Servings:" : 0, "Image" : nil],
        //"Granola Bars" : ["Container" : "Box", "Servings" : 10, "Image" : nil],
        "Soup" : ["Container" : "Can", "Servings" : 2, "Remaining Servings:" : 0, "Image" : nil],
        "Dried Pasta" : ["Container" : "Box", "Servings" : 8, "Remaining Servings:" : 0, "Image" : nil],
        "Pasta Sauce" : ["Container" : "Jar", "Servings" : 8, "Remaining Servings:" : 0, "Image" : nil],
        //"Granola Bars" : ["Container" : "Box", "Servings" : 10, "Image" : nil],
        "Canned Chili" : ["Container" : "Can", "Servings" : 2, "Remaining Servings:" : 0, "Image" : nil],
        //"Granola Bars" : ["Container" : "Box", "Servings" : 10, "Image" : nil],
        "Rice" : ["Container" : "Bag", "Servings" : 20, "Remaining Servings:" : 0, "Image" : nil],
        "Beans" : ["Container" : "Bag", "Servings" : 20, "Remaining Servings:" : 0, "Image" : nil]
        ]
    var items : [String : Int] = [ : ]
    var mealList : [[String : Any]] = []
    var data : [String : Any] = [ : ]
    var servings : Int = 0
    var days : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //let shoppingViewController = createNavContoller

        servings = getServings(dictionary: data)
        print(servings)
        days = getDays(dictionary: data)
        calculateItems(dictionary: data)
        
    }
    
    func getServings(dictionary: Dictionary<String, Any>) -> Int   {
        let men = Double(data["Men"] as? Int ?? 0)
        //print(men)
        var temp = men * 2
        //print(temp)
        
        let wom = Double(data["Women"] as? Int ?? 0)
        //print(wom)
        temp = temp + (wom * 1.5)
        //print(temp)
        
        let child = Double(data["Children"] as? Int ?? 0)
        //print(child)
        temp = temp + (child)
        //print(temp)
        
        return Int(ceil(temp))
    }
    
    func getDays(dictionary: Dictionary<String, Any>) -> Int    {
        let scenario = data["Scenario"] as! String
        
        if scenario == "Earthquake"    {
            return 7
        }
        if scenario == "Hurricane"  {
            return 7
        }
        if scenario == "Tornado"    {
            return 4
        }
        if scenario == "Pandemic"   {
            return 14
        }
        else{
            return 4
        }
    }

        func calculateItems(dictionary: Dictionary<String, Any>) {
            //for the number of days
            //get all breakfasts
            let bfast = meals["Breakfast"]
            //let snacks = meals["Snacks"]
            let lunch = meals["Lunch"]
            let dinner = meals["Dinner"]
            var i = 0
            //for the number of days associated with this scenario...
            for index in 0...days-1   {
                i = index % bfast!.count
                
                //add the next breakfast meal to meals if we have not cycled through all of the options
                if mealList.count < 13  {
                    mealList.append(bfast![i] as [String: Any])
                    mealList.append(lunch![i] as [String: Any])
                    mealList.append(dinner![i] as [String: Any])
                    
                }
                //add or increments the ingredients required for that meal to items
                var temp = bfast![i] as [String : Any]
                var ingredients = temp["Ingredients"] as! [String]
                for index in 0...ingredients.count-1 {
                    let ingr = ingredients[index] as String
                    //add or increments the ingredients required for that meal to items
                    let increment = needMore(ingr: ingr)
                    if items[ingr] != nil {
                        items[ingr]! += increment
                    } else {
                        items.updateValue(increment, forKey: ingr)
                    }
                }
                temp = lunch![i] as [String : Any]
                ingredients = temp["Ingredients"] as! [String]
                for index in 0...ingredients.count-1 {
                    let ingr = ingredients[index] as String
                    //add or increments the ingredients required for that meal to items
                    let increment = needMore(ingr: ingr)
                    if items[ingr] != nil {
                        items[ingr]! += increment
                    } else {
                        items.updateValue(increment, forKey: ingr)
                    }
                }
                temp = dinner![i] as [String : Any]
                ingredients = temp["Ingredients"] as! [String]
                for index in 0...ingredients.count-1 {
                    let ingr = ingredients[index] as String
                    //add or increments the ingredients required for that meal to items
                    let increment = needMore(ingr: ingr)
                    if items[ingr] != nil {
                        items[ingr]! += increment
                    } else {
                        items.updateValue(increment, forKey: ingr)
                    }
                }
                
            }
            

        }
        
    func needMore(ingr : String) -> Int {

        let ingredientInfo = Ingredients[ingr]
        let currentServings = ingredientInfo!["Servings"] as! Int
        let remaining = ingredientInfo!["Remaining Servings:"] as? Int ?? 0
        
        let currentRemaining = remaining - servings
        var itemsNeeded  = 0
        var leftOver = Int(currentRemaining % currentServings)
        while (leftOver < 0)   {
            leftOver = leftOver + currentServings
        }
        Ingredients[ingr]?["Remaining Servings:"] = leftOver

        
        if (currentRemaining < 1)  {
            itemsNeeded = Int(ceil(Double(currentRemaining)/Double(currentServings))) * -1
            itemsNeeded += 1
            return itemsNeeded
        } else { return 0 }

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
