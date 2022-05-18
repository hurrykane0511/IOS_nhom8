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

    @IBOutlet weak var popularCollectionView: UICollectionView!
    
    
    fileprivate let categories =
        [
            Category(cateId: 1,title: "All", backgroundImage: #imageLiteral(resourceName: "1 (4)")),
            Category(cateId: 1,title: "Burger", backgroundImage: #imageLiteral(resourceName: "burger")),
            Category(cateId: 1,title: "Pizza", backgroundImage: #imageLiteral(resourceName: "1 (3)")),
            Category(cateId: 1,title: "Desserts", backgroundImage: #imageLiteral(resourceName: "1-1"))
        ]
    
    fileprivate let foods =
        [
            Food(name: "Burger", image: #imageLiteral(resourceName: "burger"), price: 69),
            Food(name: "Pizza", image: #imageLiteral(resourceName: "1 (3)"), price: 69),
            Food(name: "Desserts", image: #imageLiteral(resourceName: "1-1"), price: 69),
            Food(name: "Desserts", image: #imageLiteral(resourceName: "1-1"), price: 69),
            Food(name: "Desserts", image: #imageLiteral(resourceName: "1-1"), price: 69),
            Food(name: "Desserts", image: #imageLiteral(resourceName: "1-1"), price: 69),
            Food(name: "Desserts", image: #imageLiteral(resourceName: "1-1"), price: 69),
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//       Category register cell
        categoryCollectionView.register(UINib(nibName:"CategoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CategoryCollectionViewCell")
        
//        Search styles
        searchBar.layer.borderWidth = 1
        searchBar.setBackgroundImage(UIImage.init(), for: UIBarPosition.any, barMetrics: UIBarMetrics.default)
        searchBar.layer.borderColor = UIColor.gray.cgColor
        searchBar.cornerRadius = searchBar.frame.height / 2
        
        searchBar.delegate = self
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
extension HomeViewController: UISearchBarDelegate
{
    func searchBarShouldEndEditing(_ searchBar: UISearchBar) -> Bool {
          searchBar.resignFirstResponder()
        return true
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
          searchBar.resignFirstResponder()
    }
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
    }
}


extension HomeViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView === categoryCollectionView{
             return CGSize(width: collectionView.frame.width/3.5, height: collectionView.frame.width/2.8)
        }
        else{
            
            return CGSize(width: collectionView.frame.width / 2.1, height: 220)
        }
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView === categoryCollectionView{
            return categories.count
        }
        else{
            return foods.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView === categoryCollectionView{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath) as! CategoryCollectionViewCell
            cell.setup(categories[indexPath.row])
            return cell
        }
        else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PopularCollectionViewCell", for: indexPath) as! PopularCollectionViewCell
            cell.setup(foods[indexPath.row])
            return cell
        }
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

