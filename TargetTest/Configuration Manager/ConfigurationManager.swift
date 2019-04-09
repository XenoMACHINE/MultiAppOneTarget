//
//  ERPCompliator.swift
//  TargetTest
//
//  Created by Alexandre Ménielle on 09/04/2019.
//  Copyright © 2019 Alexandre Ménielle. All rights reserved.
//

import Foundation

class ConfigurationManager {
    
    static func getAppConf() -> ApplicationName {
        guard let CFBundleName = Bundle.main.infoDictionary!["CFBundleName"] as? String, let appName = ApplicationName(rawValue: CFBundleName) else { return .milliet }
        
        return appName
    }
}

enum ApplicationName : String {
    case bedague    = "Bedague"
    case milliet    = "Milliet"
    case bistrocash = "Bistrocash"
}
