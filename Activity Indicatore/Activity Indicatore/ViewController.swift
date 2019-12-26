//
//  ViewController.swift
//  Activity Indicatore
//
//  Created by trainee on 26/12/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let activityIndicator = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.whiteLarge)
    
    @IBOutlet weak var subView: UIView!
    
    @IBAction func btnStart(_ sender: Any) {
        activityIndicator.startAnimating()
    }
    
    @IBAction func btnStop(_ sender: Any) {
        activityIndicator.stopAnimating()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        activityIndicator.center = CGPoint(x: subView.bounds.size.width/2, y: subView.bounds.size.height/2)
        activityIndicator.color = UIColor.yellow
        subView.addSubview(activityIndicator)
    }
    
    
}
