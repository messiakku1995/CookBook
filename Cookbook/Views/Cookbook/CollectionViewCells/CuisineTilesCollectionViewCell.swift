//
//  CuisineTilesCollectionViewCell.swift
//  Cookbook
//
//  Created by Utkarsh Saxena on 22/08/20.
//  Copyright © 2020 Utkarsh. All rights reserved.
//

import UIKit

class CuisineTilesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imgCuisine: UIImageView!
    @IBOutlet weak var lblCuisineName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        imgCuisine.layer.cornerRadius = imgCuisine.bounds.width/2
        imgCuisine.layer.masksToBounds = true
    }

}
