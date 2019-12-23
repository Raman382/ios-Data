//
//  ModelDataVC.swift
//  ModelData
//
//  Created by Trainee on 23/12/19.
//  Copyright © 2019 Trainee. All rights reserved.
//

import UIKit

class ModelDataVC: UIViewController {

    @IBOutlet weak var lblRegister: UILabel!
    @IBOutlet weak var txtFldUserid: UIView!
    @IBOutlet weak var txtFldEmail: UITextField!
    @IBOutlet weak var txtFldPassword: UITextField!
    @IBOutlet weak var txtFldConfirmpassword: UITextField!
    @IBOutlet weak var txtFldmobileno: UITextField!
    
    let objModelData = [ModelDataVC]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    //txtFldUserid.delegate = self
   hitGesture()
    }
    func hitGesture(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapFunction))
        txtFldUserid.isUserInteractionEnabled = true
        txtFldEmail.addGestureRecognizer(tap)
    }
    }
        // Do any additional setup after loading the view.

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

