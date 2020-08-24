//
//  CookbookVC.swift
//  Cookbook
//
//  Created by Utkarsh Saxena on 22/08/20.
//  Copyright © 2020 Utkarsh. All rights reserved.
//

import UIKit

class CookbookVC: UIViewController, UISearchBarDelegate {
    
    //MARK: IBOutlets for the CookBook View Controller
    @IBOutlet weak var collCuisines: UICollectionView!
    @IBOutlet weak var tblDishes: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var viewSearchConstheight: NSLayoutConstraint!
    
    let cellCuisineTilesId = "cellCuisineTiles"
    let cellDishesTilesId = "cellDishesTiles"
    
    var arrOriginalCuisineData = [CuisineModel]()
    var arrCuisineData = [CuisineModel]()
    var selectedCuisineIndex = 0
    var isSearchBarVisible = false
    
    //MARK: View Controller life cycle function
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.searchBar.delegate = self
        self.setupCollectionView()
        self.setupTableView()
        
        self.fetchCuisineData()
        // Do any additional setup after loading the view.
    }
    
    func fetchCuisineData(){
        AddAllData.addDataToArray(completion: { response in
            
            self.arrCuisineData = response!
            self.arrOriginalCuisineData = self.arrCuisineData
            self.collCuisines.reloadData()
            self.tblDishes.reloadData()
        })
    }
    
    
    func setupCollectionView(){
        self.collCuisines.register(UINib(nibName: "CuisineTilesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: cellCuisineTilesId)
        
        self.collCuisines.delegate = self
        self.collCuisines.dataSource = self
    }
    
    func setupTableView(){
        self.tblDishes.register(UINib(nibName: "DishesTilesTableViewCell", bundle: nil), forCellReuseIdentifier: cellDishesTilesId)
        
        self.tblDishes.separatorStyle = .none
        self.tblDishes.delegate = self
        self.tblDishes.dataSource = self
    }
    
    @IBAction func btnSearchAction(_ sender: Any) {
        if isSearchBarVisible{
            self.viewSearchConstheight.constant = 0
        }else{
            self.viewSearchConstheight.constant = 50
            self.searchBar.becomeFirstResponder()
        }
        self.isSearchBarVisible = !self.isSearchBarVisible
    }
    
    @IBAction func btnUserAction(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "LoginVC") as! LoginVC
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        self.arrCuisineData = searchText.isEmpty ? self.arrCuisineData : self.arrCuisineData.filter { $0.cuisineName.contains(searchText) }
        
        self.collCuisines.reloadData()
    }
}

extension CookbookVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrCuisineData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellCuisineTilesId, for: indexPath) as! CuisineTilesCollectionViewCell
        
        let instance = self.arrCuisineData[indexPath.row]
        
        cell.imgCuisine.image = UIImage(named: instance.cuisineImage)
        cell.lblCuisineName.text = instance.cuisineName
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.selectedCuisineIndex = indexPath.row
        self.tblDishes.reloadData()
        
    }
}

extension CookbookVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCuisineData[selectedCuisineIndex].dishesData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellDishesTilesId, for: indexPath) as! DishesTilesTableViewCell
        cell.selectionStyle = .none
        
        let instance = self.arrCuisineData[selectedCuisineIndex].dishesData[indexPath.row]
        
        cell.imgDishes.image = UIImage(named: instance.dishImage)
        cell.lblDishName.text = instance.dishName
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "DishDetailsVC") as! DishDetailsVC
        
        vc.dishData = self.arrCuisineData[selectedCuisineIndex].dishesData[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
