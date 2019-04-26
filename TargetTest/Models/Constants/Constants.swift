//  Created by Alexandre Ménielle on 26/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import UIKit

class Constants : NSObject {
    
    static let shared = instantiate()
    
    required override init() { }
    
    static func instantiate() -> Constants {
        for conf in ConfigurationManager.getAppConfs() {
            guard let controller = "\(String(describing: self))\(conf)".getClass() as? Constants.Type else { continue }
            return controller.init()
        }
        return Constants()
    }
    
    // Functions
    
    func appName() -> String {
        return "Goot"
    }
    
}
