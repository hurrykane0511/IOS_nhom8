//
//  UIView+Extension.swift
//  Foodee
//
//  Created by Son on 5/5/22.
//  Copyright © 2022 Son. All rights reserved.
//

import UIKit

extension UIView{
    @IBInspectable var cornerRadius: CGFloat{
        get{
            return cornerRadius
        }
        set{
            self.layer.cornerRadius = newValue
        }
    }
}
