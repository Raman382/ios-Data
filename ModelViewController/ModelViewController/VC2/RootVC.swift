
import UIKit

class RootVC: UIViewController {
    
    @IBOutlet weak var txtFldName: UITextField!
    @IBOutlet weak var txtFldClass: UITextField!
    @IBOutlet weak var txtFldRoll: UITextField!
    @IBOutlet weak var txtFldGender: UITextField!
    @IBOutlet weak var txtFldAddess: UITextField!
    @IBOutlet weak var txtFldId: UITextField!
    @IBOutlet weak var txtFldBatch: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func btnSave(_ sender: Any) {
        let nextVCObj = self.storyboard?.instantiateViewController(withIdentifier: "DetailDataVC") as? DetailDataVC
        
        nextVCObj?.nameVal = txtFldName.text!
        nextVCObj?.classVal = txtFldClass.text!
        nextVCObj?.rollVal = txtFldRoll.text!
        nextVCObj?.genderVal = txtFldGender.text!
        nextVCObj?.addressVal = txtFldAddess.text!
        nextVCObj?.idcardVal = txtFldId.text!
        nextVCObj?.batchyearVal = txtFldBatch.text!
        
        
        self.navigationController?.pushViewController(nextVCObj!, animated: true)
        
    }
    
    
}
