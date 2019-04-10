//  Created by Alexandre Ménielle on 09/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import Foundation

class DetailController : NSObject {
    
    required override init() { }

    static func instantiate() -> DetailController{
        
        let appName = ConfigurationManager.getAppConf().rawValue
        let controllerStr = "\(String(describing: self))_\(appName)"
        if let controller = controllerStr.getClass() as? DetailController.Type {
            return controller.init()
        }
        
        return DetailController()
    }
    
}
