//
//  ViewController2.swift
//  DataTransfer
//
//  Created by trainee on 30/09/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    
    @IBOutlet weak var lblText2: UILabel!
    
    var textStr : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblText2.text = textStr
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backAction(_ sender: Any) {
        
       self.navigationController?.popViewController(animated: true)
    }
    
}
