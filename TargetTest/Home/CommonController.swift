//
//  Controller_A.swift
//  TargetTest
//
//  Created by Alexandre Ménielle on 09/04/2019.
//  Copyright © 2019 Alexandre Ménielle. All rights reserved.
//

import Foundation
import UIKit

class CommonController : NSObject {
    
    func welcome() -> String {
        let appVersion = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as? String ?? ""
        let buildVersion = Bundle.main.infoDictionary!["CFBundleVersion"] as? String ?? ""
        let appName = ConfigurationManager.getAppConf().rawValue
        return "Welcome to \(appName) v\(appVersion) (\(buildVersion))"
            + "\n\nERP : \(getERP())"
    }
    
    func getERP() -> String {
        return "Inconnu"
    }
    
    func getMainColor() -> UIColor {
        return .white
    }
}
