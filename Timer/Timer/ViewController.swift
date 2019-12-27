//
//  ViewController.swift
//  Timer
//
//  Created by trainee on 27/12/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 0
    var timer = Timer()
    
    @IBOutlet weak var lblTxt: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnStart(_ sender: Any) {
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
    }
    
    @IBAction func btnPause(_ sender: Any) {
        timer.invalidate()
    }
    
    @objc func timerAction() {
        counter += 1
        lblTxt.text = "\(counter)"
    }
    
}
