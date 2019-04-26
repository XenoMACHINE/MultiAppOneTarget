//  Created by Alexandre Ménielle on 14/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import UIKit

class HomeController : Controller {
    
    static func instantiate() -> HomeController {
        for conf in ConfigurationManager.getAppConfs() {
            guard let controller = "\(String(describing: self))\(conf)".getClass() as? HomeController.Type else { continue }
            return controller.init()
        }
        return HomeController()
    }
    
    func initUI(viewController : HomeViewController){
        let view = HomePromotions(frame: viewController.view.frame)
        viewController.view.addSubview(view)
    }
    
}
