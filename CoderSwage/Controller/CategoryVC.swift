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
        return DataService.instance.getCateogry().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell") as? CategoryViewCell {
            let category = DataService.instance.getCateogry()[indexPath.row]
            cell.updateViewCell(category: category)
            return cell
        }else {
            return UITableViewCell()
        }
    }

}


















