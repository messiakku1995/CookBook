//
//  RecipeStepsTableViewCell.swift
//  Cookbook
//
//  Created by Utkarsh Saxena on 24/08/20.
//  Copyright © 2020 Utkarsh. All rights reserved.
//

import UIKit

class RecipeStepsTableViewCell: UITableViewCell {

    @IBOutlet weak var lblStepsCount: UILabel!
    @IBOutlet weak var lblRecipeStep: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
