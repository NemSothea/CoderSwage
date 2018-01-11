//
//  ProductCell.swift
//  CoderSwage
//
//  Created by SotheaNem on 1/11/18.
//  Copyright © 2018 SwageClothes. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {

    @IBOutlet weak var productImage:UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice:UILabel!
    func updateViewProduct(product:Product){
        productImage.image = UIImage(named:product.imageName)
        productPrice.text = product.price
        productTitle.text = product.title
    }

}
