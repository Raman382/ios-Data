//
//  ViewController.swift
//  DidSelectRow
//
//  Created by trainee on 05/11/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    
    @IBOutlet weak var tblVw: UITableView!

    let arrName = ["  Sukhpreet Mam","  Raj","  Kishore","  Gopal","  Raman","  Gurjeet","  Parmesh"]
    let arrimage: [UIImage] = [#imageLiteral(resourceName: "mam"),#imageLiteral(resourceName: "raj"),#imageLiteral(resourceName: "gopal"),#imageLiteral(resourceName: "parmesh"),#imageLiteral(resourceName: "raman"),#imageLiteral(resourceName: "kishore"),#imageLiteral(resourceName: "gurjeet"),]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        
        cell.lblTxt.text = arrName[indexPath.row]
        cell.imgVw.image = arrimage[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextVc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        nextVc.selectedImage = arrimage[indexPath.row]
        nextVc.selectedData = arrName[indexPath.row]
        self.navigationController?.pushViewController(nextVc,animated: true)
    }
    
    
}

