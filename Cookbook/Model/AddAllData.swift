//
//  AddAllData.swift
//  Cookbook
//
//  Created by Utkarsh Saxena on 24/08/20.
//  Copyright © 2020 Utkarsh. All rights reserved.
//

import Foundation

class AddAllData: NSObject{
    static var arrCuisineData = [CuisineModel]()
    
    static func addDataToArray(completion: @escaping ([CuisineModel]?) -> Void){
        self.addBurgersCuisine()
        self.addSandwichCuisine()
        
        completion(arrCuisineData)
    }
    
    
    static func addSandwichCuisine(){
        var tempArrDishes = [DishesModel]()
        
        tempArrDishes.append(DishesModel(dishId: 21, dishName: "Vegetable Sandwich", dishImage: "sandwich_VegetableSandwich", dishCuisine: "Sandwiches", dishRecipe: RecipeModel(cuisineId: 2, dishId: 21, dishImage: "sandwich_VegetableSandwich", cookTime: "25 mins", recipe: "Trim the broccoli into florets. Grill the bell peppers, squash, zucchini and eggplant on both sides. Baste with olive oil and herbs. Marinate the grilled vegetables with the mixture for about 10 minutes.Spread this plum cheese mixture on the slices of bread. Layer a few leaves of lettuce and add the vegetable mix. Add a 2-3 slices of Brie cheese. Serve with chips"), ratingNCommentsData: RatingNCommentsModel(cuisineId: 2, dishId: 21, ratings: 4, userComments: [])))
        
        
        tempArrDishes.append(DishesModel(dishId: 22, dishName: "Toasted Chicken Sandwich", dishImage: "sandwich_ToastedChickenSandwich", dishCuisine: "Sandwiches", dishRecipe: RecipeModel(cuisineId: 2, dishId: 22, dishImage: "sandwich_ToastedChickenSandwich", cookTime: "45 mins", recipe: "Combine chicken with tomato ketchup, gherkins, chilli sauce. worcestershire sauce, garlic and honey along with salt and black pepper powder. Mix them well and then add oregano. Mix well and chill overnight. Put avocado in a grinder, add salt, coriander leaves, lemon juice and chilli sauce. Grind well. Take oil in a heated pan, put butter and add sliced onion. Cook till golden brown. Now add red chilli flakes, jaggery and thyme to it. Mix well. Put the prepare chilli onion aside. Take the multigrain loaf and slice into two halves. Spread the avocado spread over the loaf. Put lettuce leaves, capsicum, chilli onion and chicken over it. Cover the filling with the loaf and serve hot"), ratingNCommentsData: RatingNCommentsModel(cuisineId: 2, dishId: 22, ratings: 5, userComments: [])))
        
        
        tempArrDishes.append(DishesModel(dishId: 23, dishName: "Open Beatroot Sandwich", dishImage: "sandwich_OpenBeatRootSandwich", dishCuisine: "Sandwiches", dishRecipe: RecipeModel(cuisineId: 2, dishId: 23, dishImage: "sandwich_OpenBeatRootSandwich", cookTime: "90 mins", recipe: "Brush the bread with oil mixed with garlic. Sprinkle with pepper. Place under a grill to color. Set beetroot slices aside. Toss beetroot leaves in a pan with wine, lemon juice and oil. Allow it to wilt over a moderate flame. Toss apple and basil in hot oil. Season. Saute the mushrooms in some butter. Arrange all ingredients on the bread in any order. Serve immediately with a sprinkling of olive oil over the top"), ratingNCommentsData: RatingNCommentsModel(cuisineId: 2, dishId: 23, ratings: 4, userComments: [])))
        
        
        tempArrDishes.append(DishesModel(dishId: 24, dishName: "Paneer Toasty Sandwich", dishImage: "sandwich_PaneerToastySandwich", dishCuisine: "Sandwiches", dishRecipe: RecipeModel(cuisineId: 2, dishId: 24, dishImage: "sandwich_PaneerToastySandwich", cookTime: "55 mins", recipe: "In a bowl, add tamarind extract, sweet chili sauce, mint sauce and chaat masala. Mix them well together. Butter the bread for toasting. In bread, add julienne onion, sliced tomatoes, salt for taste. Dip the paneer into a mixture and place it on the bread. Add Kashmiri Chilies and few fried garlic in the bread. Toast the bread from both the sides and your Paneer Toasties are ready to serve"), ratingNCommentsData: RatingNCommentsModel(cuisineId: 2, dishId: 24, ratings: 5, userComments: [])))
        
        
        tempArrDishes.append(DishesModel(dishId: 25, dishName: "Roasted Broccoli Sandwich", dishImage: "sandwich_RoastedBroccoliSandwich", dishCuisine: "Sandwiches", dishRecipe: RecipeModel(cuisineId: 2, dishId: 25, dishImage: "sandwich_RoastedBroccoliSandwich", cookTime: "60 mins", recipe: "Arrange the broccoli florets on a baking dish and season them with salt and cracked black pepper. Drizzle 1 tbsp of pickling oil from the marinated olives over the seasoned broccoli and mix them well. Roast them in the oven at 200-225 degrees Celsius for 8-9 minutes. Remove from the oven and keep it aside to cool. Season the spring onions with salt and cracked black pepper and put them onto the grill. Next, roughly tear in the roasted broccoli into the filling and mix well till the broccoli is evenly coated. To make a spring onion relish, mix together marinated green olives, halved cherry tomatoes, cracked black pepper, basil leaves, a dash of balsamic vinegar, olive oil and the grilled spring onions. Serve the sandwich with the grilled spring onion relish, cherry tomatoes and marinated olives"), ratingNCommentsData: RatingNCommentsModel(cuisineId: 2, dishId: 25, ratings: 2, userComments: [])))
        
        arrCuisineData.append(CuisineModel(cuisineId: 2, cuisineName: "Sandwiches", cuisineImage: "Cuisine_Sandwiches", dishesData: tempArrDishes))
    }
    
    
    static func addBurgersCuisine(){
        
        var tempArrDishes = [DishesModel]()
        
        tempArrDishes.append(DishesModel(dishId: 11, dishName: "Cheese Burger", dishImage: "burger_Cheesburger", dishCuisine: "Burgers", dishRecipe: RecipeModel(cuisineId: 1, dishId: 11, dishImage: "burger_Cheesburger", cookTime: "35 mins", recipe: "To make the sauce, combine all the ingredients in a bowl with a little seasoning. Heat a large non-stick frying pan over a medium heat and brush the cut sides of the buns liberally with melted butter. Toast in the hot pan until really golden and toasted. Turn the heat to high. When the pan is really hot, season the mince and form into four balls, then push two into the frying pan, squashing to flatten. Sprinkle over some salt again and cook for 2 minutes until really crisp, then flip, sprinkle over some salt and repeat. Lay a sheet of cheese onto each and cover with a lid for 30 seconds until melted. Move onto a plate and repeat with the remaining patties and cheese slices. Spread some of the sauce onto the bases of the buns, then top with the cheese patties. Top with lots of pickles, then spread the tops liberally with the sauce and put on top to serve"), ratingNCommentsData: RatingNCommentsModel(cuisineId: 1, dishId: 11, ratings: 4, userComments: [])))
        
        
        tempArrDishes.append(DishesModel(dishId: 12, dishName: "Butter Burger", dishImage: "burger_ButterBurger", dishCuisine: "Burgers", dishRecipe: RecipeModel(cuisineId: 1, dishId: 12, dishImage: "burger_ButterBurger", cookTime: "70 mins", recipe: "Melt half the butter in a small lidded pan. Add the onion and a pinch of salt, and cook for 15 minutes on a gentle heat until softened and buttery but not coloured. Remove from the heat. Put the beef mince in a bowl and add the celery salt and a really good grind of black pepper. Mix everything together with clean hands then divide into four balls. Put each ball between two sheets of baking paper and squash into flat patties, at least 1cm bigger than your buns (they will shrink in the pan so don’t worry about them being too wide). Heat a heavy non-stick frying pan over a high heat. Lightly oil the burgers then cook for 2-3 minutes on each side or until golden and crisp. Add a slice of cheese and cover the pan for a minute to allow it to start melting. Butter the buns with the remaining butter and put some pickles on the bases. Sit the burgers on top, spoon over the onions and put the lids on. Serve with ketchup, mustard and lots of napkins"), ratingNCommentsData: RatingNCommentsModel(cuisineId: 1, dishId: 12, ratings: 3, userComments: [])))
        
        
        tempArrDishes.append(DishesModel(dishId: 13, dishName: "New York Deli Burger", dishImage: "burger_NewYorkBurger", dishCuisine: "Burgers", dishRecipe: RecipeModel(cuisineId: 1, dishId: 13, dishImage: "burger_NewYorkBurger", cookTime: "80 mins", recipe: "Mix together all the dressing ingredients and season. Mix together the mince, garlic salt, chilli powder and lots of black pepper. Divide into four balls then use clean hands to squish down into very flat patties. Don’t worry about getting perfect round edges as the craggy bits will get nice and crisp. Rub a little oil on all of the burgers and season. Heat a large heavy frying pan until hot then fry the burgers for 2 minutes on each side. Add a slice of cheese and a couple of slices of pastrami to each burger then cover the pan to let the cheese melt and the pastrami warm through (use a baking tray if you don’t have a lid). To assemble, spread dressing generously on both sides of the buns. Add a spoonful of sauerkraut to the bottoms, followed by the burger, cheese, pastrami and some dill pickles. Stick on the tops and eat"), ratingNCommentsData: RatingNCommentsModel(cuisineId: 1, dishId: 13, ratings: 5, userComments: [])))
        
        
        tempArrDishes.append(DishesModel(dishId: 14, dishName: "Cheese Tacos Burger", dishImage: "burger_CheeseTacosBurger", dishCuisine: "Burgers", dishRecipe: RecipeModel(cuisineId: 1, dishId: 14, dishImage: "burger_CheeseTacosBurger", cookTime: "90 mins", recipe: "Mix the burger sauce ingredients and leave to sit at room temperature while you prepare everything else. Mix the vinegar and sugar then add the red onions with a pinch of salt and chilli flakes, if using, and toss. Put the mince, onion, garlic salt, paprika, egg yolk and lots of pepper in a bowl. Mix together well using clean hands, then form into 8 balls. Squash each one into a really flat patty. Heat a large frying pan, griddle or BBQ to hot. Oil the patties then sear for 2 minutes on each side or until cooked through. To build the tacos, add some lettuce to each tortilla then break up a patty into chunks and sit on top. Add some cheese, pickled onions and burger sauce"), ratingNCommentsData: RatingNCommentsModel(cuisineId: 1, dishId: 14, ratings: 4, userComments: [])))
        
        arrCuisineData.append(CuisineModel(cuisineId: 1, cuisineName: "Burgers", cuisineImage: "Cuisine_Burgers", dishesData: tempArrDishes))
    }
}
