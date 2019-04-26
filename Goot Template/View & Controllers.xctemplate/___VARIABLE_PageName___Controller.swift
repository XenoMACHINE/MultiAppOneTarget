//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___ : Controller {
    
    static func instantiate() -> ___VARIABLE_PageName___Controller {
        for conf in ConfigurationManager.getAppConfs() {
            guard let controller = "\(String(describing: self))_\(conf)".getClass() as? ___VARIABLE_PageName___Controller.Type else { continue }
            return controller.init()
        }
        return ___VARIABLE_PageName___Controller()
    }
    
    func getStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "___VARIABLE_PageName___", bundle: nil)
    }
    
    func initUI(viewController : ___VARIABLE_PageName___ViewController) {
        
    }
    
}
