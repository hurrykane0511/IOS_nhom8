//
//  PopularCollectionViewCell.swift
//  Foodee
//
//  Created by Son on 5/13/22.
//  Copyright © 2022 Son. All rights reserved.
//

import UIKit

class PopularCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var price: UILabel!
    
    func setup(_ food:Food) -> Void {
        self.name.text = food.name
        self.image.image = food.image
        self.price.text = "$ " + String(food.price)
    }
}

struct Food {
    var name:String
    var image:UIImage
    var price:Int
}
