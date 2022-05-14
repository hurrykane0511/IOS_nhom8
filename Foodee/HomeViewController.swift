//
//  HomeViewController.swift
//  Foodee
//
//  Created by Son on 5/9/22.
//  Copyright © 2022 Son. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {


    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var promotionView: UIView!

    fileprivate let categories =
        [
            Category(cateId: 1,title: "All", backgroundImage: #imageLiteral(resourceName: "1 (4)")),
            Category(cateId: 1,title: "Burger", backgroundImage: #imageLiteral(resourceName: "burger")),
            Category(cateId: 1,title: "Pizza", backgroundImage: #imageLiteral(resourceName: "1 (3)")),
            Category(cateId: 1,title: "Desserts", backgroundImage: #imageLiteral(resourceName: "1-1"))
        ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//       Category register cell
        categoryCollectionView.register(UINib(nibName:"CategoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoryCell")
        
//        Search styles
        searchBar.layer.borderWidth = 1
        searchBar.setBackgroundImage(UIImage.init(), for: UIBarPosition.any, barMetrics: UIBarMetrics.default)
        searchBar.layer.borderColor = UIColor.gray.cgColor
        searchBar.cornerRadius = searchBar.frame.height / 2
        
        self.promotionView.layer.insertSublayer(LinearColor.init(view: promotionView).gl, at:0)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
        self.navigationController?.navigationBar.shadowImage = nil
        self.navigationController?.navigationBar.isTranslucent = false
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/3.5, height: collectionView.frame.width/2.8)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as! CategoryCollectionViewCell
        cell.setup(categories[indexPath.row])
        return cell
    }

    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
        if let collectionView = self.categoryCollectionView,
        let indexPath = collectionView.indexPathsForSelectedItems?.first,
        let cell = collectionView.cellForItem(at: indexPath) as? CategoryCollectionViewCell,
        let category = cell.category
        {
            
        }
    }
}

