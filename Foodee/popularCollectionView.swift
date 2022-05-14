//
//  popularCollectionView.swift
//  Foodee
//
//  Created by Son on 5/14/22.
//  Copyright © 2022 Son. All rights reserved.
//

import UIKit

class popularCollectionView: UICollectionView {
    
    override var intrinsicContentSize: CGSize {
        return contentSize
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if !__CGSizeEqualToSize(bounds.size, self.intrinsicContentSize) {
            self.invalidateIntrinsicContentSize()
        }
    }
}
