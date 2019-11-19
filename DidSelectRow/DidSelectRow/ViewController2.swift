//
//  ViewController2.swift
//  DidSelectRow
//
//  Created by trainee on 05/11/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var imgVw: UIImageView!
    @IBOutlet weak var lblTxt: UILabel!
    
    var selectedImage = UIImage()
    var selectedData = String()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    imgVw.image = selectedImage
    lblTxt.text = selectedData
        
        
    }
    
}
