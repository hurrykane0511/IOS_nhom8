
//
//  CategoryCollectionViewCell.swift
//  Foodee
//
//  Created by Son on 5/13/22.
//  Copyright © 2022 Son. All rights reserved.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    var category:Category?

    @IBOutlet weak var cellImg: UIImageView!
    @IBOutlet weak var cellTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setup(_ category: Category) {
        self.category = category
        cellImg.image = category.backgroundImage
        cellTitle.text = category.title
    }
}

struct Category {
    var cateId: Int
    var title: String
    var backgroundImage: UIImage
}
