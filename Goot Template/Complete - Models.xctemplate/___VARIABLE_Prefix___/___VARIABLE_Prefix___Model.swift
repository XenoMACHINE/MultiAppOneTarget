//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___ : NSObject {
    
    required override init() { }

    static func instantiate() -> ___VARIABLE_Prefix___Model{
        
        let appName = ConfigurationManager.getAppConf().rawValue
        let controllerStr = "\(String(describing: self))_\(appName)"
        if let controller = controllerStr.getClass() as? ___VARIABLE_Prefix___Model.Type {
            return controller.init()
        }
        
        return ___VARIABLE_Prefix___Model()
    }
    
}
