//
//  FoodCollectionViewCell.swift
//  Foodee
//
//  Created by Son on 5/14/22.
//  Copyright © 2022 Son. All rights reserved.
//

import UIKit

class FoodCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: FoodCollectionViewCell.self)
    
    var food:Food?
    
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    func setup(food: Food) -> Void {
        self.food = food
        self.name.text = food.name
        self.image.image = food.image
        self.price.text = "$ " + String(food.price)
    }
}
