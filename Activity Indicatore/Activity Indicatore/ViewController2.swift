//
//  ViewController2.swift
//  Activity Indicatore
//
//  Created by trainee on 26/12/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var lblTxt: UILabel!
    
    var containerView = UIView()
    var loadingView = UIView()
    var activityIndicator = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let _  = Timer.scheduledTimer(withTimeInterval: 10, repeats: false) { (_) in
            self.lblTxt.text = "Stop ActivitiIndicator"
            self.activityIndicator.stopAnimating()
            self.containerView.removeFromSuperview()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

        // Do any additional setup after loading the view.
    }
    
  
    @IBAction func playClicked(_ sender: Any) {
        
        containerView.frame = self.view.frame
        containerView.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.3)
        self.view.addSubview(containerView)
        
        loadingView.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
        loadingView.center = self.view.center
        loadingView.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5)
        loadingView.clipsToBounds = true
        loadingView.layer.cornerRadius = 10
        containerView.addSubview(loadingView)
        
        activityIndicator.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        activityIndicator.style = UIActivityIndicatorView.Style.whiteLarge
        activityIndicator.center = CGPoint(x:loadingView.frame.size.width / 2, y:loadingView.frame.size.height / 2);
        activityIndicator.startAnimating()
        loadingView.addSubview(activityIndicator)

        
    }
    

}
