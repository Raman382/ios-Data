//
//  ViewController.swift
//  AlamofirePodInstallations
//
//  Created by trainee on
import UIKit
import Alamofire
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var dict = [NSDictionary]()
    
    @IBOutlet weak var tblVw: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblVw.delegate = self
        tblVw.dataSource = self
        
        let urlStr = "https://raw.githubusercontent.com/typicode/demo/master/db.json"
        Alamofire.request(urlStr).responseJSON { (data) in
           // print(data)
            
            if let getDict = data.result.value{
                self.dict = getDict as! [NSDictionary]
                self.tblVw.reloadData()

            }else{
                print("error")
            }
        }
    }
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return dict.count
}

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tblVw.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
    //cell.lblId.text = ("\(dict[indexPath.row]["id"] ?? "error")")
    //cell.lblName.text = ("\(dict[indexPath.row]["title"] ?? "error")")
//   let addressDict = dict[indexPath.row]["posts"] as? NSDictionary
//      //  cell.lblId.text = ("\(dict[indexPath.row]["id"] ?? "error")")

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // print(dict[indexPath.row]["id"] as
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
}
