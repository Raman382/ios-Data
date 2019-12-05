

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtFldDate: UITextField!
    var datePicker : UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        let datepicker = UIDatePicker()
        datepicker.datePickerMode = .date
        
         datepicker.minimumDate = datepicker.date
        datepicker.maximumDate = Calendar.current.date(byAdding: .year, value: 10, to: Date())
        
        txtFldDate.inputView = datepicker
        datepicker.addTarget(self, action: #selector(dateChanged(datePicker:)), for: .valueChanged)
       
    }

    @objc func dateChanged(datePicker:UIDatePicker){
        
    
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
      txtFldDate.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
        
    }
}

