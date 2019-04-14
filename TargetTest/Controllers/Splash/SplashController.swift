//  Created by Alexandre Ménielle on 14/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import UIKit

class SplashController : NSObject {
    
    required override init() { }

    static func instantiate() -> SplashController{
        
        let appName = ConfigurationManager.getAppConf().rawValue
        let controllerStr = "\(String(describing: self))_\(appName)"
        if let controller = controllerStr.getClass() as? SplashController.Type {
            return controller.init()
        }
        
        return SplashController()
    }
    
    func getStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "Splash", bundle: nil)
    }
    
    func getErp() -> String {
        return "ERP"
    }
    
    func getAppName() -> String {
        return "Goot app"
    }
    
    func getVersion() -> String {
        let appVersion = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as? String ?? ""
        let buildVersion = Bundle.main.infoDictionary!["CFBundleVersion"] as? String ?? ""
        return "v\(appVersion) (\(buildVersion))"
    }
    
}
