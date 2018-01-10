//
//  DataService.swift
//  CoderSwage
//
//  Created by SotheaNem on 1/10/18.
//  Copyright © 2018 SwageClothes. All rights reserved.
//

import Foundation

class DataService {
    static let dataService = DataService()
    private let categories = [
        Category(title: "SHIRT", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digitals.png")
    ]
    func getCateogry()->[Category] {
        return categories
    }
}
