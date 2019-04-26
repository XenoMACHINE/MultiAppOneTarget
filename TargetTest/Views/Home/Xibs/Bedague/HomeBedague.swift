//
//  HomePromotions.swift
//  TargetTest
//
//  Created by Alexandre Ménielle on 25/04/2019.
//  Copyright © 2019 Alexandre Ménielle. All rights reserved.
//

import UIKit

class HomeBedague : XibView {
   
    @IBOutlet weak var homePromotions: HomePromotions!
    
    override func getNibName() -> String {
        return "\(HomeBedague.self)"
    }
    
    override func didMoveToWindow() {
        
    }
    
}
