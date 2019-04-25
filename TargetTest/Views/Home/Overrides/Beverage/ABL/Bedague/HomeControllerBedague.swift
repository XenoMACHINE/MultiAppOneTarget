//  Created by Alexandre Ménielle on 14/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import  UIKit

class HomeControllerBedague : HomeControllerABL {

    override func getStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "HomeImage", bundle: nil)
    }
    
    override func initUI(viewController: HomeViewController) {
        viewController.titleLAbel.text = "Home Bedague"
        self.initUIImage(viewController: viewController)
    }
}
