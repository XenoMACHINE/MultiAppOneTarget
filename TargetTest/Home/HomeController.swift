//
//  Controller.swift
//  TargetTest
//
//  Created by Alexandre Ménielle on 09/04/2019.
//  Copyright © 2019 Alexandre Ménielle. All rights reserved.
//

import UIKit


//TODO Voir si on peut créer automatiquement les fichiers manquant avec un script shell dans Build phases
class HomeController : NSObject {
    
    required override init() { }
    
    static func instantiate() -> HomeController{
        
        let appName = ConfigurationManager.getAppConf().rawValue
        let controllerStr = "\(String(describing: self))_\(appName)"
        if let controller = controllerStr.getClass() as? HomeController.Type {
            return controller.init()
        }
        
        return HomeController()
    }
    
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
