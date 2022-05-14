//
//  TabBarController.swift
//  Foodee
//
//  Created by Son on 5/13/22.
//  Copyright © 2022 Son. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    @IBOutlet weak var TabBar: UITabBar!
    
    let selectedColor = UIColor(red: 210.0 / 255.0, green: 22.0 / 255.0, blue: 112.0 / 255.0, alpha: 1.0)
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
    UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: selectedColor], for: .selected)
        
        self.tabBar.tintColor = selectedColor
       

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBar.backgroundImage = UIImage()
        self.tabBar.shadowImage = UIImage()
        self.tabBar.isTranslucent = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBar.backgroundImage = nil
        self.tabBar.shadowImage = nil
        self.tabBar.isTranslucent = false
    }
}

