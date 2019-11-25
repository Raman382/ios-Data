
import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var txtFldName: UITextField!
    @IBOutlet weak var txtFldRollNum: UITextField!
    
    
    var nameVal = String()
    var rollVal = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtFldName.text = nameVal
        txtFldRollNum.text = rollVal
        
    }
    
    @IBAction func btnBack(_ sender: Any) {
        
    }
    
   

}
