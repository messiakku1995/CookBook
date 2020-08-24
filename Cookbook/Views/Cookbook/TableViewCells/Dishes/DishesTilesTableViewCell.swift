//
//  DishesTilesTableViewCell.swift
//  Cookbook
//
//  Created by Utkarsh Saxena on 22/08/20.
//  Copyright © 2020 Utkarsh. All rights reserved.
//

import UIKit

class DishesTilesTableViewCell: UITableViewCell {

    @IBOutlet weak var imgDishes: UIImageView!
    @IBOutlet weak var lblDishName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
