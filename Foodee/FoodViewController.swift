//
//  FoodViewController.swift
//  Foodee
//
//  Created by Son on 5/14/22.
//  Copyright © 2022 Son. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController {

    @IBOutlet weak var foodCollectionView: UICollectionView!
    
    fileprivate let foods =
    [
        Food(name: "Burger", image: #imageLiteral(resourceName: "burger"), price: 69),
        Food(name: "Pizza", image: #imageLiteral(resourceName: "1 (3)"), price: 69),
        Food(name: "Desserts", image: #imageLiteral(resourceName: "1-1"), price: 69),
        Food(name: "Salad", image: #imageLiteral(resourceName: "salad"), price: 69),
        Food(name: "Strawberry cream cake", image: #imageLiteral(resourceName: "creamCake"), price: 69),
        Food(name: "Pizaa Cheese", image: #imageLiteral(resourceName: "pizzacheese"), price: 69),
        Food(name: "Taco", image: #imageLiteral(resourceName: "1 (4)"), price: 69),

    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        foodCollectionView.dataSource = self
        foodCollectionView.delegate = self
    }
}

extension FoodViewController: UICollectionViewDataSource,
UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foods.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FoodCollectionViewCell.identifier, for: indexPath) as! FoodCollectionViewCell
            cell.setup(food: foods[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 2.1, height: collectionView.frame.width / 1.5)
    }
}
