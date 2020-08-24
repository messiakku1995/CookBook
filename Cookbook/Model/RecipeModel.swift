//
//  RecipeModel.swift
//  Cookbook
//
//  Created by Utkarsh Saxena on 22/08/20.
//  Copyright © 2020 Utkarsh. All rights reserved.
//

import Foundation

class RecipeModel: Codable{
    let cuisineId       : Int
    let dishId          : Int
    let dishImage       : String
    let cookTime        : String
    let recipe          : String
    
    enum CodingKeys: String, CodingKey{
        case cuisineId       = "cuisineId"
        case dishId          = "dishId"
        case dishImage       = "dishImage"
        case cookTime        = "cookTime"
        case recipe          = "recipe"
    }
    
    init(param: JSON){
        self.cuisineId       = param["cuisineId"].intValue
        self.dishId          = param["dishId"].intValue
        self.dishImage       = param["dishImage"].stringValue
        self.cookTime        = param["cookTime"].stringValue
        self.recipe          = param["recipe"].stringValue
    }
    
    init(cuisineId: Int, dishId: Int, dishImage: String, cookTime: String, recipe: String){
        self.cuisineId = cuisineId
        self.dishId = dishId
        self.dishImage = dishImage
        self.cookTime = cookTime
        self.recipe = recipe
    }
    
}
