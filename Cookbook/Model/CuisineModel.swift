//
//  CuisineModel.swift
//  Cookbook
//
//  Created by Utkarsh Saxena on 22/08/20.
//  Copyright © 2020 Utkarsh. All rights reserved.
//

import Foundation

class CuisineModel: Codable{
    let cuisineId       : Int
    let cuisineName     : String
    let cuisineImage    : String
    let dishesData      : [DishesModel]
    
    enum CodingKeys: String, CodingKey{
        case cuisineId       = "cuisineId"
        case cuisineName     = "cuisineName"
        case cuisineImage    = "cuisineImage"
        case dishesData      = "dishesData"
    }
    
    init(param: JSON){
        self.cuisineId       = param["cuisineId"].intValue
        self.cuisineName     = param["cuisineName"].stringValue
        self.cuisineImage    = param["cuisineImage"].stringValue
        self.dishesData      = param["dishesData"].arrayValue.map({DishesModel(param: JSON($0))})
    }
    
    init(cuisineId: Int, cuisineName: String, cuisineImage: String, dishesData: [DishesModel]){
        self.cuisineId = cuisineId
        self.cuisineName = cuisineName
        self.cuisineImage = cuisineImage
        self.dishesData = dishesData
    }

}
