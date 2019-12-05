//
//  ViewController.swift
//  DateAndTimePicker
//
//  Created by trainee on 05/12/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK:- Outlets
    
    @IBOutlet weak var txtFldStrtDate: UITextField!
    @IBOutlet weak var txtFldStrtTime: UITextField!
    @IBOutlet weak var txtFldEndDate: UITextField!
    @IBOutlet weak var txtFldEndTime: UITextField!
    
    // MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
     //   MARK:- DatePicker StartDate
        
        let datepicker = UIDatePicker()
        datepicker.datePickerMode = .date
        datepicker.minimumDate = datepicker.date
        datepicker.maximumDate = Calendar.current.date(byAdding: .year, value: 10, to: Date())
       
        
        //  MARK:- DatePicker EndDate
        
        let datepicker2 = UIDatePicker()
        datepicker2.datePickerMode = .date
        datepicker2.minimumDate = datepicker.date
        datepicker2.maximumDate = Calendar.current.date(byAdding: .year, value: 10, to: Date())
        
        // MARK:- TimePicker StartTime
        
        let datepicker3 = UIDatePicker()
        datepicker3.datePickerMode = .time
        
        // MARK:- timePicker EndTime
        
          let datepicker4 = UIDatePicker()
          datepicker4.datePickerMode = .time
        
        txtFldStrtDate.inputView = datepicker
        txtFldEndDate.inputView = datepicker2
        txtFldStrtTime.inputView = datepicker3
        txtFldEndTime.inputView = datepicker4
        
        datepicker.addTarget(self, action: #selector(dateChanged(datePicker:)), for: .valueChanged)
        datepicker2.addTarget(self, action: #selector(dateChanged1(datePicker:)), for: .valueChanged)
        datepicker3.addTarget(self, action: #selector(TimeChanged(datePicker:)), for: .valueChanged)
        datepicker4.addTarget(self, action: #selector(TimeChanged2(datePicker:)), for: .valueChanged)
        
    }
    
    // MARK:- Action Functions
    
    @objc func dateChanged(datePicker:UIDatePicker){
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        txtFldStrtDate.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }
    
    @objc func dateChanged1(datePicker:UIDatePicker){
        
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        txtFldEndDate.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }
    
    @objc func TimeChanged(datePicker:UIDatePicker){
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm"
        
        txtFldStrtTime.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }
    
    @objc func TimeChanged2(datePicker:UIDatePicker){
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "hh:mm"
        txtFldEndTime.text = dateFormatter.string(from: datePicker.date)
        view.endEditing(true)
    }
    
    
    
}

