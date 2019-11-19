//
//  ViewController.swift
//  TableView
//
//  Created by trainee on 30/10/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    @IBOutlet weak var tblVw: UITableView!
    
    let arrSection = ["Fruits","Vegetable"]
    let arrItems = [["apple","banana","grapes","orange"],
                   ["radish","tomato","onion","carrot"]]
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrItems[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
      cell.lblText.text = arrItems[indexPath.section][indexPath.row]
        return cell
        
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       return self.arrSection[section]
    }

    func numberOfSections(in tableView: UITableView) -> Int {
//        return arrSection.count
        return 2
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Total 4"
       
    }
}


