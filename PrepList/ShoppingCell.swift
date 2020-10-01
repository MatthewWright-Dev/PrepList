//
//  ShoppingCell.swift
//  PrepList
//
//  Created by Matthew Wright on 4/23/20.
//  Copyright © 2020 Matthew Wright. All rights reserved.
//

import UIKit

class ShoppingCell: UITableViewCell {

    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var itemImage: UIImageView!
    
    
    var item: String = ""  {
        didSet {
            if (item != oldValue)  {
                itemLabel.text = item
            }
        }
    }
    var size: String = ""{
        didSet {
            if (size != oldValue)  {
                sizeLabel.text = size
            }
        }
    }
    var quantity: String = ""{
        didSet {
            if (quantity != oldValue)  {
                quantityLabel.text = quantity
            }
        }
    }
    var itemPic: UIImage? = nil{
        didSet {
            if (itemPic != oldValue)  {
                itemImage.image = itemPic
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
