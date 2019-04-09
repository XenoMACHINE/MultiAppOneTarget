//
//  MillietController.swift
//  TargetTest
//
//  Created by Alexandre Ménielle on 09/04/2019.
//  Copyright © 2019 Alexandre Ménielle. All rights reserved.
//

import UIKit

#if Milliet //optionnel -> Éviter de compiler code inutile, on laisse ?

class MillietController : CambosController {
    override func getMainColor() -> UIColor {
        return .yellow
    }
}

#endif

