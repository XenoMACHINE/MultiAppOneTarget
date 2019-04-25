//
//  SharedObject.swift
//  TargetTest
//
//  Created by Alexandre Ménielle on 25/04/2019.
//  Copyright © 2019 Alexandre Ménielle. All rights reserved.
//

import Foundation


class SharedObject : NSObject {
    
    required override init() { }

    static func instantiate() -> SharedObject {
        let appName = ConfigurationManager.getAppConf().rawValue
        let controllerStr = "\(String(describing: self))_\(appName)"
        if let controller = controllerStr.getClass() as? SharedObject.Type {
            return controller.init()
        }
        
        return SharedObject()
    }
}
