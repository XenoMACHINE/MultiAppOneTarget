//  Created by Alexandre Ménielle on 13/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import UIKit

class CartController : NSObject {
    
    required override init() { }

    static func instantiate() -> CartController{
        
        let appName = ConfigurationManager.getAppConf().rawValue
        let controllerStr = "\(String(describing: self))_\(appName)"
        if let controller = controllerStr.getClass() as? CartController.Type {
            return controller.init()
        }
        
        return CartController()
    }
    
    func getStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "Cart", bundle: nil)
    }
    
}
