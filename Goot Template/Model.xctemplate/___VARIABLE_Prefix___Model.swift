//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___ : NSObject {
    
    required override init() { }
    
    static func instantiate() -> ___VARIABLE_Prefix___Model {
        for conf in ConfigurationManager.getAppConfs() {
            guard let controller = "\(String(describing: self))\(conf)".getClass() as? ___VARIABLE_Prefix___Model.Type else { continue }
            return controller.init()
        }
        return ___VARIABLE_Prefix___Model()
    }
    
}
