//
//  ViewController.swift
//  CoderSwage
//
//  Created by SotheaNem on 1/10/18.
//  Copyright © 2018 SwageClothes. All rights reserved.
//

import UIKit

class CategoryVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
   @IBOutlet weak var categoryTable:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.delegate = self
        categoryTable.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell") as? CategoryViewCell {
            let category = DataService.instance.getCategories()[indexPath.row]
            cell.updateViewCell(category: category)
            return cell
        }else {
            return CategoryViewCell()
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier:"ProductsVC", sender: category)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductsVC {
            assert(sender as? Category != nil)
            productVC.initProducts(category: sender as! Category)
        }
    }

}


















