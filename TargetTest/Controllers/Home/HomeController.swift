//  Created by Alexandre Ménielle on 13/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import UIKit

class HomeController : NSObject {
    
    required override init() { }

    static func instantiate() -> HomeController{
        
        let appName = ConfigurationManager.getAppConf().rawValue
        let controllerStr = "\(String(describing: self))_\(appName)"
        if let controller = controllerStr.getClass() as? HomeController.Type {
            return controller.init()
        }
        
        return HomeController()
    }
    
    func getStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "Home", bundle: nil)
    }
    
    func getAppName() -> String {
        return ""
    }
    
}
