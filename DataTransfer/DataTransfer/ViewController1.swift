//
//  ViewController1.swift
//  DataTransfer
//
//  Created by trainee on 30/09/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController1: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    

    let sectionsArr = ["States","Districts"]

    var itemsArr = [ ["AndhraPradesh","Telangana","Haryana","Punjab"], // States
    ["Kurnool","Anantapur","Kadapa","Chitoor"] // Districts
  ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.sectionsArr[section]
    }
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return itemsArr.count
        }
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.sectionsArr.count
    }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
       let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell1") as! TableViewCell1
            
            cell.lblText.text = itemsArr[indexPath.section][indexPath.row]
            return cell
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let secVc = self.storyboard?.instantiateViewController(withIdentifier:"ViewController2") as! ViewController2
       secVc.textStr = itemsArr[indexPath.section][indexPath.row]
        self.navigationController?.pushViewController(secVc, animated: true)
    }
        

        }
    

    



