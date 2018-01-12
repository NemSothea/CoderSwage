//
//  ProductVC.swift
//  CoderSwage
//
//  Created by SotheaNem on 1/11/18.
//  Copyright © 2018 SwageClothes. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var productCollectionView:UICollectionView!
    
    private(set)public var products = [Product]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        productCollectionView.delegate = self
        productCollectionView.dataSource = self
    }
    func initProducts(category:Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = productCollectionView.dequeueReusableCell(withReuseIdentifier: "ProductsCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViewProduct(product: product)
            return cell
        }
        return ProductCell()
    }
    
    

}
