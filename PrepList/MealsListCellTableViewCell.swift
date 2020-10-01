//
//  MealsListCellTableViewCell.swift
//  PrepList
//
//  Created by Matthew Wright on 4/23/20.
//  Copyright © 2020 Matthew Wright. All rights reserved.
//

import UIKit

class MealsListCellTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabe: UILabel!
    @IBOutlet weak var mealLabel: UILabel!
    @IBOutlet weak var mealImage: UIImageView!
    
    var name: String = ""  {
        didSet {
            if (name != oldValue)  {
                nameLabe.text = name
            }
        }
    }
    var meal: String = ""{
        didSet {
            if (meal != oldValue)  {
                mealLabel.text = meal
            }
        }
    }
    var itemPic: UIImage? = nil{
        didSet {
            if (itemPic != oldValue)  {
                mealImage.image = itemPic
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
