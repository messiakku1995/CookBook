//
//  DishDetailsVC.swift
//  Cookbook
//
//  Created by Utkarsh Saxena on 24/08/20.
//  Copyright © 2020 Utkarsh. All rights reserved.
//

import UIKit

class DishDetailsVC: UIViewController {

    @IBOutlet weak var imgDish: UIImageView!
    @IBOutlet weak var lblCookingTime: UILabel!
    @IBOutlet weak var tblRecipeDetails: UITableView!
    
    let cellRecipeStepsId = "cellRecipeSteps"
    var dishData : DishesModel?
    var arrRecipeData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.processRecipeData()
        self.setupTableView()
        self.setupUIData()
    }

    func setupTableView(){
        self.tblRecipeDetails.register(UINib(nibName: "RecipeStepsTableViewCell", bundle: nil), forCellReuseIdentifier: cellRecipeStepsId)
        
        self.tblRecipeDetails.separatorStyle = .none
        self.tblRecipeDetails.delegate = self
        self.tblRecipeDetails.dataSource = self
    }
    
    func setupUIData(){
        self.navigationItem.title = "\(self.dishData?.dishName ?? "")"
        self.lblCookingTime.text = "Cooking Time: \(self.dishData?.dishRecipe.cookTime ?? "Quick Bite")"
        self.imgDish.image = UIImage(named: dishData?.dishImage ?? "")
    }
    
    
    func processRecipeData(){
        let strRecipe = self.dishData?.dishRecipe.recipe
        self.arrRecipeData = strRecipe?.components(separatedBy: ".") ?? []
    }
    
    @IBAction func btnViewComments(_ sender: Any) {
    }
    
    
}


extension DishDetailsVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrRecipeData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellRecipeStepsId, for: indexPath) as! RecipeStepsTableViewCell
        cell.selectionStyle = .none
        
        cell.lblStepsCount.text = "\(indexPath.row + 1)."
        cell.lblRecipeStep.text = self.arrRecipeData[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    
}

