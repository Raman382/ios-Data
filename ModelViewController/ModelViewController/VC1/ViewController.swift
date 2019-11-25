

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFldName: UITextField!
    @IBOutlet weak var txtFldRollNum: UITextField!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    @IBAction func btnSave(_ sender: Any) {
        let nextVCObj = self.storyboard?.instantiateViewController(withIdentifier: "ViewController2") as? ViewController2
        
        nextVCObj?.nameVal = txtFldName.text!
        nextVCObj?.rollVal = txtFldRollNum.text!
        
        self.navigationController?.pushViewController(nextVCObj!, animated: true)
    }
    
}

