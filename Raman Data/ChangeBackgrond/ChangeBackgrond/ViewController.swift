//
//  ViewController.swift
//  ChangeBackgrond
//
//  Created by Trainee on 03/12/19.
//  Copyright © 2019 Trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var btnSave: UIButton!
    @IBOutlet weak var txtFldName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "2")
        self.view.insertSubview(backgroundImage, at: 0)

        self.view.backgroundColor = UIColor.red
        
       lblName.backgroundColor = UIColor.gray
       btnSave.backgroundColor = UIColor.blue
       txtFldName.backgroundColor = UIColor.red
        
        lblName.layer.cornerRadius = 20
        btnSave.layer.cornerRadius = 20
        txtFldName.layer.cornerRadius = 20
        
        lblName.layer.borderWidth = 5
        btnSave.layer.borderWidth = 5
        txtFldName.layer.borderWidth = 5
        
        lblName.layer.borderColor = UIColor.white.cgColor
        btnSave.layer.borderColor = UIColor.white.cgColor
        txtFldName.layer.borderColor = UIColor.white.cgColor
        
      //  lblName.font = lblName.font.withSize(30)
        
        lblName.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 30)
        txtFldName.font = UIFont(name: "AppleSDGothicNeo-Heavy", size: 30)
        btnSave.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        
    }

}

