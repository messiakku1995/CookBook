//
//  DishesModel.swift
//  Cookbook
//
//  Created by Utkarsh Saxena on 22/08/20.
//  Copyright © 2020 Utkarsh. All rights reserved.
//

import Foundation

class DishesModel: Codable{
    let dishId                  : Int
    let dishName                : String
    let dishImage               : String
    let dishCuisine             : String
    let dishRecipe              : RecipeModel
    let ratingNCommentsData     : RatingNCommentsModel
    
    enum CodingKeys: String, CodingKey{
        case dishId                 = "dishId"
        case dishName               = "dishName"
        case dishImage              = "dishImage"
        case dishCuisine            = "dishCuisine"
        case dishRecipe             = "dishRecipe"
        case ratingNCommentsData    = "RatingNCommentsData"
    }
    
    init(param: JSON){
        self.dishId          = param["dishId"].intValue
        self.dishName        = param["dishName"].stringValue
        self.dishImage       = param["dishImage"].stringValue
        self.dishCuisine     = param["dishCuisine"].stringValue
        self.dishRecipe      = RecipeModel(param: JSON(param["dishRecipe"].dictionaryValue))
        self.ratingNCommentsData = RatingNCommentsModel(param: JSON(param["RatingNCommentsData"].dictionaryValue))
    }
    
    init(dishId: Int, dishName: String, dishImage: String, dishCuisine: String, dishRecipe: RecipeModel, ratingNCommentsData: RatingNCommentsModel){
        self.dishId = dishId
        self.dishName = dishName
        self.dishImage = dishImage
        self.dishCuisine = dishCuisine
        self.dishRecipe = dishRecipe
        self.ratingNCommentsData = ratingNCommentsData
    }
}
