
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnShowAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Notice", message: "Update your mobile to latest vertion", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Remind Me Tomorrow", style: UIAlertAction.Style.default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Update Now", style: UIAlertAction.Style.destructive, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func btnAlert(_ sender: Any) {
        let alert = UIAlertController(title: "UIAlertController", message: "Would you like to continue learning how to use iOS alerts?", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Continue", style: UIAlertAction.Style.default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func btnAction(_ sender: Any) {
        let alert = UIAlertController(title: "My Title", message: "This is my mobile.", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func btnAlert4(_ sender: Any) {
        let actionSheet = UIAlertController(title: "Hello", message: "Hello World", preferredStyle: .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Open in Google Maps", style: . default, handler: nil))
        actionSheet.addAction(UIAlertAction(title: "Open in Google", style: . default, handler: nil))
        actionSheet.addAction(UIAlertAction(title: "Copy Address", style: . default, handler: nil))
        
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: {
            
            (action: UIAlertAction) -> Void in
            actionSheet.dismiss(animated: true, completion: nil)
        }))
        present( actionSheet , animated: true , completion: nil)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        cancelAction.setValue(UIColor.red, forKey: "titleTextColor")
        
        
        
        }
    }
    









