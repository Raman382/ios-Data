

import UIKit

class ViewController2: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    
    let data = ["A","B","C","D","E"]
    @IBOutlet weak var txtFldName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let thePicker = UIPickerView()
        txtFldName.inputView = thePicker
    
        thePicker.delegate = self
        thePicker.dataSource = self
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        txtFldName.text = data[row]
    }
    
}
