//  Created by Alexandre Ménielle on 10/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import UIKit

class ProductPageViewController : UIViewController {

    let controller = ProductPageController.instantiate()
    
    static func instantiate(controller : ProductPageController) -> ProductPageViewController {
        let storyboard = controller.getStoryboard()
        let viewController = storyboard.instantiateViewController(withIdentifier: "\(ProductPageViewController.self)") as! ProductPageViewController
        return viewController
    }

}
