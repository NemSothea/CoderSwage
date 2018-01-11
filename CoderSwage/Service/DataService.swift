//
//  DataService.swift
//  CoderSwage
//
//  Created by SotheaNem on 1/10/18.
//  Copyright © 2018 SwageClothes. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    private let categories = [
        Category(title: "SHIRT", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    private let hats = [
    Product(title: "Devslope for fun hat.", price: "$18", imageName: "hat01.png"),
    Product(title: "Devslope for fun white hat.", price: "$18", imageName: "hat02.png"),
    Product(title: "Devslope for fun black hat.", price: "$20", imageName: "hat03.png"),
    Product(title: "Devslope for fun hat hat.", price: "$18", imageName: "hat04.png")
    ]
    private let hoodies = [
        Product(title: "Devslope for fun shirt.", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslope for fun white shirt.", price: "$25", imageName: "hoodie02.png"),
        Product(title: "Devslope for fun black shirt.", price: "$27", imageName: "hoodie03.png"),
        Product(title: "Devslope for fun hat shirt.", price: "$18", imageName: "hoodie04.png")
    ]
    private let shirts = [
        Product(title: "Devslope for fun shirt.", price: "$32", imageName: "shirt01.png"),
        Product(title: "Devslope for fun white shirt.", price: "$25", imageName: "shirt02.png"),
        Product(title: "Devslope for fun black shirt.", price: "$27", imageName: "shirt03.png"),
        Product(title: "Devslope for fun hat shirt.", price: "$18", imageName: "shirt04.png")
    ]
    private let digital = [Product]()
    
    
    func getCateogry()->[Category] {
        return categories
    }
    func getProducts(forCategryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
           return getShirt()
        case "HATS":
           return getHat()
        case "HOODIES":
            return getHoodie()
        case "DIGITAL":
          return getDigital()
        default:
         return getShirt()
        }
    }
    func getShirt() -> [Product] {
        return shirts
    }
    func getHat() -> [Product] {
        return hats
    }
    func getHoodie() -> [Product] {
        return hoodies
    }
    func getDigital() -> [Product] {
        return digital
    }
}
