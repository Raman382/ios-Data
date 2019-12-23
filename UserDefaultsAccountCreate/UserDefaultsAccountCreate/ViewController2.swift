//
//  ViewController2.swift
//  UserDefaultsAccountCreate
//
//  Created by trainee on 20/11/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnLogout(_ sender: Any) {
         self.navigationController?.popToRootViewController(animated: true)
        
    }
    
}
