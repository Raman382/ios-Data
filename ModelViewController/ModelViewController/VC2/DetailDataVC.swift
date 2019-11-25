
import UIKit

class DetailDataVC: UIViewController {
    
    @IBOutlet weak var txtFldName: UITextField!
    @IBOutlet weak var txtFldClass: UITextField!
    @IBOutlet weak var txtFldRollNo: UITextField!
    @IBOutlet weak var txtFldGender: UITextField!
    @IBOutlet weak var txtFldAddress: UITextField!
    @IBOutlet weak var txtFldId: UITextField!
    @IBOutlet weak var txtFldBatch: UITextField!
    
    
    var nameVal = String()
    var classVal = String()
    var rollVal = String()
    var genderVal = String()
    var addressVal = String()
    var idcardVal = String()
    var batchyearVal = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        txtFldName.text = nameVal
        txtFldClass.text = classVal
        txtFldRollNo.text = rollVal
        txtFldGender.text = genderVal
        txtFldAddress.text = addressVal
        txtFldId.text = idcardVal
        txtFldBatch.text = batchyearVal
        
        
        
    }
    
    @IBAction func btnBack(_ sender: Any) {
    }
    
}
