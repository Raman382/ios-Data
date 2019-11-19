//
//  ViewController.swift
//  CostumizeView
//
//  Created by trainee on 31/10/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tblVw: UITableView!
    
    let arrSection = ["Fruits","Vegetable"]
    let sectionImages: [UIImage] = [#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "1")]
    let arrItems = [["Apple","Banana","Orange","Grapes"],
                    ["Radish","Carrot","Onion","Tomato"]]
    let arrFooter = ["Fruits","Vegetable"]
    
    let arrPrice = [10,20,30,40]
    var sum = Int()
  //  var totalPrice: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrItems[section].count
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.lblTxt.text = arrItems[indexPath.section][indexPath.row]
        cell.lblTxt2.text = "\(arrPrice[indexPath.row])"
        
        return cell
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let view = UIView()
        view.backgroundColor = UIColor.red
        let image = UIImageView(image: sectionImages[section])
        image.frame = CGRect(x: 5, y: 5, width: 30, height: 20)
        
        view.addSubview(image)
        
        let label = UILabel()
        label.text = arrSection[section]
        label.frame = CGRect(x: 45, y: 5, width: 100, height: 30)
        view .addSubview(label)
        
        return view
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrSection.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 40
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "Total"
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor.orange
        let image = UIImageView(image: sectionImages[section])
        image.frame = CGRect(x: 5, y: 5, width: 30, height: 20)
        
        view.addSubview(image)
        
        let label = UILabel()
        label.text = "Total \(arrItems[section].count) rows"
        label.frame = CGRect(x: 45, y: 5, width: 100, height: 30)
        view .addSubview(label)
        
        let label2 = UILabel()
        
        for value in arrPrice as NSArray as! [Int] {
            sum = sum + value
            label2.text = "Total: \(sum)"
        }
        sum = 0
        label2.frame = CGRect(x: 300, y: 5, width:100, height: 30)
        view.addSubview(label2)
        return view
    }
}

