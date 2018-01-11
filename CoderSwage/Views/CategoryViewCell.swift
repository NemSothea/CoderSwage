//
//  CategoryViewCell.swift
//  CoderSwage
//
//  Created by SotheaNem on 1/10/18.
//  Copyright © 2018 SwageClothes. All rights reserved.
//

import UIKit

class CategoryViewCell: UITableViewCell {

    @IBOutlet weak var categoryImage:UIImageView!
    @IBOutlet weak var categoryTitle:UILabel!
    func updateViewCell(category:Category){
        categoryImage.image = UIImage(named:category.imageName)
        categoryTitle.text = category.title
    }

}
