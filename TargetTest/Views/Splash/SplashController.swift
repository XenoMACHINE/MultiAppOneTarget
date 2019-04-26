//  Created by Alexandre Ménielle on 14/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import UIKit

class SplashController : Controller {
    
    static func instantiate() -> SplashController {
        for conf in ConfigurationManager.getAppConfs() {
            guard let controller = "\(String(describing: self))\(conf)".getClass() as? SplashController.Type else { continue }
            return controller.init()
        }
        return SplashController()
    }
    
    func initUI(viewController : SplashViewController){
        viewController.appNameLabel.text = Constants.shared.appName()
    }
    
    func loadData(callback : @escaping () -> ()){
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            callback()
        }
    }
    
}
