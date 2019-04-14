//  Created by Alexandre Ménielle on 13/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import UIKit

class HomeController_Bedague : HomeController_ABL {
    
    override func getStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "HomeImage", bundle: nil)
    }

    override func getAppName() -> String {
        return "Bedague"
    }
}
