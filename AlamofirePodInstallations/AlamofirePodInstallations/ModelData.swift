import Foundation
import Alamofire


class ModelData : NSObject {

    func fetchAlamofireData(){
     let url = "https://raw.githubusercontent.com/typicode/demo/master/db.json"
        Alamofire.request(url).response { (data) in
            print(data)
        }
       
        
        
        
        
    }

    
    
    
    
    
    
}

