//  Created by Alexandre Ménielle on 26/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import UIKit

class PromoModel : NSObject {
    
    required override init() { }
    
    static func instantiate() -> PromoModel {
        for conf in ConfigurationManager.getAppConfs() {
            guard let controller = "\(String(describing: self))\(conf)".getClass() as? PromoModel.Type else { continue }
            return controller.init()
        }
        return PromoModel()
    }
    
}
