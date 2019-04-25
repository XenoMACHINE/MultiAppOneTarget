//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___ : Controller {
    
    static func instantiate() -> ___VARIABLE_Prefix___Controller {
        for conf in ConfigurationManager.getAppConfs() {
            guard let controller = "\(String(describing: self))_\(conf)".getClass() as? ___VARIABLE_Prefix___Controller.Type else { continue }
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
