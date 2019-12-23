//
//  ViewController.swift
//  UserDefaultsAccountCreate
//
//  Created by trainee on 20/11/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtFldName: UITextField!
    @IBOutlet weak var txtFldPassword: UITextField!
    @IBOutlet weak var btnChkBox: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name =  UserDefaults.standard.object(forKey: "Name") as? String{
            txtFldName.text = name
            btnChkBox.isSelected = true
        }
        if let name =  UserDefaults.standard.object(forKey: "Password") as? String{
            txtFldPassword.text = name
            btnChkBox.isSelected = true
        }
    }
    
    @IBAction func chkBtnBox(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
        
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        if btnChkBox.isSelected{
            UserDefaults.standard.set(txtFldName.text!, forKey: "Name")
            UserDefaults.standard.set(txtFldPassword.text!, forKey: "Password")
            
        }
        
        if txtFldName.text == "" || txtFldPassword.text == "" {
            let alert = UIAlertController(title: "Information", message: "Please fill the empity text Fields", preferredStyle: .alert)
            
            let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
            
            alert.addAction(ok)
            
            self.present(alert, animated: true, completion: nil)
            
        }else{
            let nextVc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
            self.navigationController?.pushViewController(nextVc, animated: true)
            
        }
        
        
        
        
     
      
    }

}

