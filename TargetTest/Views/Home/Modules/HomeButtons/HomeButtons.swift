//
//  HomePromotions.swift
//  TargetTest
//
//  Created by Alexandre Ménielle on 25/04/2019.
//  Copyright © 2019 Alexandre Ménielle. All rights reserved.
//

import UIKit

protocol HomeButtonsDelegate {
    func onButton1()
}

class HomeButtons : XibView {
    
    var delegate : HomeButtonsDelegate?
   
    override func getNibName() -> String {
        return "\(HomeButtons.self)"
    }
    
    @IBAction func onButton1(_ sender: Any) {
        delegate?.onButton1()
    }
}
