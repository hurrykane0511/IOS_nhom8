//
//  Colors.swift
//  Foodee
//
//  Created by Son on 5/13/22.
//  Copyright © 2022 Son. All rights reserved.
//

import UIKit

class LinearColor {
    var gl:CAGradientLayer!
    
    init(view: UIView) {
        
        let colorTop = UIColor(red: 210.0 / 255.0, green: 22.0 / 255.0, blue: 112.0 / 255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 62.0 / 255.0, green: 31.0 / 255.0, blue: 159.0 / 255.0, alpha: 0.78).cgColor
        self.gl = CAGradientLayer()
        self.gl.locations = [0.0, 1.0]
        self.gl.startPoint = CGPoint(x: 0.0, y: 1.0)
        self.gl.endPoint = CGPoint(x: 1.0, y: 1.0)
        self.gl.colors = [colorTop, colorBottom]
        self.gl.cornerRadius = 20
        self.gl.frame = view.bounds
    }
}
