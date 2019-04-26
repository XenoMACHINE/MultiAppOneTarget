//  Created by Alexandre Ménielle on 14/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import  UIKit

class HomeControllerBedague : HomeControllerABL {
    
    override func initUI(viewController: HomeViewController) {
        let homePromotions = HomeBedague(frame: viewController.view.frame)
        viewController.view.addSubview(homePromotions)
    }
}
