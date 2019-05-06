//
//  ERPCompliator.swift
//  TargetTest
//
//  Created by Alexandre Ménielle on 09/04/2019.
//  Copyright © 2019 Alexandre Ménielle. All rights reserved.
//

import Foundation

let appByIndustry : [Industry:[ApplicationName]] = [
    .beverage : [.goot, .bedague, .rouquette, .berthelot, .ouest, .proxi, .milliet, .bistrocash, .pietrini, .ledg, .pnb, .forez]
]

let appByERP : [ERP:[ApplicationName]] = [
    .abl    : [.bedague, .rouquette, .berthelot, .ouest, .proxi],
    .cambos : [.milliet, .bistrocash],
    .serca  : [.pietrini],
    .odoo   : [.ledg],
    .prios  : [.pnb, .forez],
    .none   : [.goot]
]

class ConfigurationManager {
    
    static func getAppConfs() -> [String]{
        return [getAppName().rawValue, getAppERP().rawValue, getAppIndustry().rawValue]
    }
    
    static func getAppName() -> ApplicationName {
        guard let CFBundleName = Bundle.main.infoDictionary!["CFBundleName"] as? String, let appName = ApplicationName(rawValue: CFBundleName)
            else { return .goot }
        
        return appName
    }
    
    static func getAppERP() -> ERP {
        let appName = getAppName()
        for tuple in appByERP{
            if tuple.value.contains(appName) { return tuple.key }
        }
        return .none
    }
    
    static func getAppIndustry() -> Industry {
        let appName = getAppName()
        for tuple in appByIndustry{
            if tuple.value.contains(appName) { return tuple.key }
        }
        return .beverage
    }
}

enum ApplicationName : String {
    case goot       = "Goot"
    case bedague    = "Bedague"
    case berthelot  = "Berthelot"
    case bistrocash = "Bistrocash"
    case forez      = "Forez"
    case ledg       = "LEDG"
    case milliet    = "Milliet"
    case ouest      = "Ouest"
    case pietrini   = "Pietrini"
    case pnb        = "ParisNordBoissons"
    case rouquette  = "Rouquette"
    case proxi      = "Proxi"
}

enum ERP : String {
    case none = ""
    case abl = "ABL"
    case serca = "Serca"
    case cambos = "Cambos"
    case prios = "Prios"
    case odoo = "Odoo"
}

enum Industry : String {
    case beverage = "Beverage"
}

extension String {
    
    func getClass() -> AnyClass? {
        let namespace = (Bundle.main.infoDictionary!["CFBundleExecutable"] as! String).replacingOccurrences(of: " ", with: "_")
        return Bundle.main.classNamed("\(namespace).\(self)")
    }
    
}
