import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    var countryArr:[String] = Array()
    
    @IBOutlet weak var lblVw: UILabel!
    @IBOutlet weak var txtFldName: UITextField!
    
    let arrPickerView = ["Raman", "Chandan", "Raju", "Kishore", "Gurjeet", "Parmesh"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
      let thePicker = UIPickerView()
        txtFldName.inputView = thePicker
        
        thePicker.dataSource = self
        thePicker.delegate = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrPickerView.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrPickerView[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
      //  txtFldName.text = arrPickerView[row]
        let nameSelected = arrPickerView[pickerView.selectedRow(inComponent: 0)]
        lblVw.text = "\(nameSelected) is a triner in toxsl"
    }
}
