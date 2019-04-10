//  Created by Alexandre Ménielle on 10/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import UIKit

class ProductPageController : NSObject {
    
    required override init() { }

    static func instantiate() -> ProductPageController{
        
        let appName = ConfigurationManager.getAppConf().rawValue
        let controllerStr = "\(String(describing: self))_\(appName)"
        if let controller = controllerStr.getClass() as? ProductPageController.Type {
            return controller.init()
        }
        
        return ProductPageController()
    }
    
    func getStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "ProductPage", bundle: nil)
    }
    
}
