//  Created by Alexandre Ménielle on 13/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import UIKit

class CartViewController : UIViewController {

    let controller = CartController.instantiate()
    
    static func instantiate(controller : CartController) -> CartViewController {
        let storyboard = controller.getStoryboard()
        let viewController = storyboard.instantiateViewController(withIdentifier: "\(CartViewController.self)") as! CartViewController
        return viewController
    }

}
