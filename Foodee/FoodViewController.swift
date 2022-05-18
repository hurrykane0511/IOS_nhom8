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
        Food(name: "Burger", image: #imageLiteral(resourceName: "burger"), price: 96),

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
