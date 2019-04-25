//
//  SplashController_Beverage.swift
//  TargetTest
//
//  Created by Alexandre Ménielle on 25/04/2019.
//  Copyright © 2019 Alexandre Ménielle. All rights reserved.
//

import Foundation

class SplashControllerBeverage : SplashController {
    override func getErp() -> String {
        return super.getErp() + " - Beverage"
    }
}
