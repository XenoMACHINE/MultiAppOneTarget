//  Created by Alexandre Ménielle on 14/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import UIKit

class HomeController : NSObject {
    
    var products = ["Coca cola", "Orangina", "Chouffe FUT 5L"]
    
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
    
    func initUI(viewController : HomeViewController){
        viewController.titleLAbel.text = "Home"
    }
    
    func initUIImage(viewController : HomeViewController){
        viewController.backgroundImage.image = UIImage(named: "background")
    }
    
}
