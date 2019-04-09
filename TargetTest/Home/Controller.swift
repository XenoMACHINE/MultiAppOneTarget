//
//  Controller.swift
//  TargetTest
//
//  Created by Alexandre Ménielle on 09/04/2019.
//  Copyright © 2019 Alexandre Ménielle. All rights reserved.
//

import Foundation

class Controller : CommonController {
    //Nothing to override
    
    static func instantiate() -> Controller{
        
        switch ConfigurationManager.getAppConf(){
        case .bedague:
            return BedagueController()
        case .milliet:
            return MillietController()
        case .bistrocash:
            return BistrocashController()
        }
    }
}
