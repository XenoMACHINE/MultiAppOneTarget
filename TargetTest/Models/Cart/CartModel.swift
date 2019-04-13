//  Created by Alexandre Ménielle on 13/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import UIKit

class CartModel : NSObject {
    
    required override init() { }

    static func instantiate() -> CartModel{
        
        let appName = ConfigurationManager.getAppConf().rawValue
        let controllerStr = "\(String(describing: self))_\(appName)"
        if let controller = controllerStr.getClass() as? CartModel.Type {
            return controller.init()
        }
        
        return CartModel()
    }
    
    func getArticles() -> String {
        return "Classic cart [Coca, perrier, redbull]"
    }
    
}
