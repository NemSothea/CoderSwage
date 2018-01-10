//
//  Category.swift
//  CoderSwage
//
//  Created by SotheaNem on 1/10/18.
//  Copyright © 2018 SwageClothes. All rights reserved.
//

import Foundation
struct Category {
    private (set) public var title:String!
    private (set) public var imageName:String!
    
    init(title:String,imageName:String) {
        self.title = title
        self.imageName = imageName
    }
    
}
