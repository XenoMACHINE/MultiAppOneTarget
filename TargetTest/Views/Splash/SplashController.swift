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
    
    func getStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "Splash", bundle: nil)
    }
    
    func initUI(viewController : SplashViewController){
        viewController.appNameLabel.text = self.getAppName()
        viewController.erpLabel.text = self.getErp()
        viewController.versionLabel.text = self.getVersion()
    }
    
    func getAppName() -> String {
        return "Goot app"
    }
    
    func getErp() -> String {
        return "Inconnu"
    }
    
    func getVersion() -> String{
        let appVersion = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as? String ?? ""
        let buildVersion = Bundle.main.infoDictionary!["CFBundleVersion"] as? String ?? ""
        return "v\(appVersion) (\(buildVersion))"
    }
    
}
