//  Created by Alexandre Ménielle on 14/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import UIKit

class HomeController : Controller {
    
    var products = ["Coca cola", "Orangina", "Chouffe FUT 5L"]
    
    static func instantiate() -> HomeController {
        for conf in ConfigurationManager.getAppConfs() {
            guard let controller = "\(String(describing: self))\(conf)".getClass() as? HomeController.Type else { continue }
            return controller.init()
        }
        return HomeController()
    }
    
    func getStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "Home", bundle: nil)
    }
    
    func initUI(viewController : HomeViewController){
        viewController.titleLAbel.text = "Home"
    }
    
    func initUIImage(viewController : HomeViewController){
        viewController.backgroundImage.image = UIImage(named: "background")
    }
    
}
