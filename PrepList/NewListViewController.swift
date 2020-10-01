//
//  NewListViewController.swift
//  PrepList
//
//  Created by Matthew Wright on 4/22/20.
//  Copyright © 2020 Matthew Wright. All rights reserved.
//

import UIKit

class NewListViewController: UIViewController {
    
    var toAdd : [String : Any] = [:]
    let scenarios = ["Earthquake", "Hurricane", "Tornado", "Pandemic", "Flood"]
    var scenTitle: String?
   
    @IBOutlet weak var manLabel: UILabel!
    @IBOutlet weak var manStep: UIStepper!
    @IBOutlet weak var womanLabel: UILabel!
    @IBOutlet weak var womanStep: UIStepper!
    @IBOutlet weak var childLabel: UILabel!
    @IBOutlet weak var childStep: UIStepper!
    @IBOutlet weak var scenPicker: UIPickerView!
    
    @IBOutlet weak var scenarioTitle: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        scenPicker.dataSource = self
        scenPicker.delegate = self
        //scenarioTitle.becomeFirstResponder()
    
    }
    
    
    
    @IBAction func manStepper(_ sender: Any) {
        let val = IntegerLiteralType(manStep.value)
        if (val == 1)  {
            manLabel.text = String(val) + " Man"
        } else {
            manLabel.text = String(val) + " Men"
        }
    }
    
    @IBAction func womanStepper(_ sender: Any) {
        let val = IntegerLiteralType(womanStep.value)
        if (val == 1)  {
            womanLabel.text = String(val) + " Woman"
        } else {
            womanLabel.text = String(val) + " Women"
        }
    
    }
    
    @IBAction func childStepper(_ sender: Any) {
        let val = IntegerLiteralType(childStep.value)
        if (val == 1)  {
            childLabel.text = String(val) + " Child"
        } else {
            childLabel.text = String(val) + " Children"
        }
    
    }
    
//    func pListCreation() {
  //         let fileManager = FileManager.default
    //        let documentDirectory = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
    //        let path = documentDirectory.appending("/albumsComplete.plist")
    //    let toAdd = ["Title" : "Still Needed", "Scenario" : scenarios[scenPicker.selectedRow(inComponent: 1)], "Men": IntegerLiteralType(manStep.value), "Women": IntegerLiteralType(womanStep.value), "Children" : IntegerLiteralType(childStep.value), "Date" : Date()] as [String : Any]
//            if (!fileManager.fileExists(atPath: path)) {
//                let plistContent = NSDictionary(dictionary: toAdd)
//                let success:Bool = plistContent.write(toFile: path, atomically: true)
//                if success {
//                    print("file has been created!")
//                }else{
//                    print("unable to create the file")
//                }
//               
//            }else{
//                print("file already exist")
//            }
    //}
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "saveSegue"  {
            toAdd = ["Title" : scenarioTitle.text ?? "Untitled", "Scenario" : scenarios[scenPicker.selectedRow(inComponent: 0)], "Men": IntegerLiteralType(manStep.value), "Women": IntegerLiteralType(womanStep.value), "Children" : IntegerLiteralType(childStep.value), "Date" : Date()] as [String : Any]
        }
    }
    

}

extension NewListViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return scenarios.count
    }
    
}
extension NewListViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return scenarios[row]
    }
    
}
