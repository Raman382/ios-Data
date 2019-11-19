//
//  ViewController.swift
//  ViewHeaderFooter
//
//  Created by trainee on 30/10/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    

    @IBOutlet weak var tblVw: UITableView!
    let arrSection = ["Fruits","Vegitable"]
    let sectionImages: [UIImage] = [(#imageLiteral(resourceName: "Fruits")),(#imageLiteral(resourceName: "Veg"))]
    let arrItems = [["Apple","Banana","Orange","Grapes"],
                    ["Radish","Carrot","Onion","Tomato"]]
//    let arrPrice = [["10","20","30","40"]]
  //  var sectiondata: [Int: [String]] = [:]
//
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrItems[section].count
      
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.lblTxt.text = arrItems[indexPath.section][indexPath.row]
//        cell.lbltxt2.text = arrPrice[indexPath.section][indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor.orange
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
//        func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
//            return "Total"



    

}
