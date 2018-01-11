//
//  ProductVC.swift
//  CoderSwage
//
//  Created by SotheaNem on 1/11/18.
//  Copyright © 2018 SwageClothes. All rights reserved.
//

import UIKit

class ProductVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var productCollectionView:UICollectionView!
    
    private(set)public var product = [Product]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return product.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = productCollectionView.dequeueReusableCell(withReuseIdentifier: <#T##String#>, for: <#T##IndexPath#>)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
