//
//  RatingNCommentsModel.swift
//  Cookbook
//
//  Created by Utkarsh Saxena on 22/08/20.
//  Copyright © 2020 Utkarsh. All rights reserved.
//

import Foundation

class RatingNCommentsModel: Codable{
    let cuisineId       : Int
    let dishId          : Int
    let ratings         : Int
    let userComments    : [UserCommentsModel]
    
    enum CodingKeys: String, CodingKey{
        case cuisineId       = "cuisineId"
        case dishId          = "dishId"
        case ratings         = "ratings"
        case userComments    = "userComments"
    }
    
    init(param: JSON){
        self.cuisineId       = param["cuisineId"].intValue
        self.dishId          = param["dishId"].intValue
        self.ratings         = param["ratings"].intValue
        self.userComments    = param["userComments"].arrayValue.map({UserCommentsModel(param: JSON($0))})
    }
    
    init(cuisineId: Int, dishId: Int, ratings: Int, userComments: [UserCommentsModel]){
        self.cuisineId = cuisineId
        self.dishId = dishId
        self.ratings = ratings
        self.userComments = userComments
    }
}

class UserCommentsModel: Codable{
    let userId          : Int
    let userName        : String
    let comment         : String
    
    enum CodingKeys: String, CodingKey{
        case userId      = "userId"
        case userName    = "userName"
        case comment     = "comment"
    }
    
    init(param: JSON){
        self.userId      = param["userId"].intValue
        self.userName    = param["userName"].stringValue
        self.comment     = param["comment"].stringValue
    }
    
    init(userId: Int, userName: String, comment: String){
        self.userId = userId
        self.userName = userName
        self.comment = comment
    }
}
