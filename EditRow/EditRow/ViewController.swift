//
//  ViewController.swift
//  EditRow
//
//  Created by trainee on 06/11/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tblVw: UITableView!
    
    var arrNames = ["Raj","Raman","Kishore","Gopal","Gurjeet","Parmesh"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        cell.lblTxt.text = arrNames[indexPath.row]
        return cell
    }
  
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            self.arrNames.remove(at: indexPath.row)
            self.tblVw.reloadData()
        }
        
    }
    @IBAction func btnEdit(_ sender: Any) {
        tblVw.isEditing = !tblVw.isEditing
}

}
