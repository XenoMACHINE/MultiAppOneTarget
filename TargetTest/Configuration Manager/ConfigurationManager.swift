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
        guard let CFBundleName = Bundle.main.infoDictionary!["CFBundleName"] as? String, let appName = ApplicationName(rawValue: CFBundleName)
            else { return .goot }
        
        return appName
    }
}

enum ApplicationName : String {
    case goot       = "Goot"
    case bedague    = "Bedague"
//    case berthelot  = "Berthelot"
    case bistrocash = "Bistrocash"
//    case forez      = "Forez"
//    case ledg       = "LEDG"
    case milliet    = "Milliet"
//    case ouest      = "Ouest-Boissons"
//    case pietrini   = "Pietrini"
//    case pnb        = "Paris Nord Boisson"
//    case rouquette  = "Rouquette"
}

extension String {
    
    func getClass() -> AnyClass? {
        let namespace = (Bundle.main.infoDictionary!["CFBundleExecutable"] as! String).replacingOccurrences(of: " ", with: "_")
        return Bundle.main.classNamed("\(namespace).\(self)")
    }
    
}
