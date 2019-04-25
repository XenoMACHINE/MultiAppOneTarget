//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___ : NSObject {
    
    required override init() { }

    static func instantiate() -> ___VARIABLE_Prefix___Controller{
        
        let appName = ConfigurationManager.getAppConf().rawValue
        let controllerStr = "\(String(describing: self))_\(appName)"
        if let controller = controllerStr.getClass() as? ___VARIABLE_Prefix___Controller.Type {
            return controller.init()
        }
        
        return ___VARIABLE_Prefix___Controller()
    }
    
    func getStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "___VARIABLE_Prefix___", bundle: nil)
    }
    
    func initUI(viewController : ___VARIABLE_Prefix___ViewController){
        
    }
    
}
