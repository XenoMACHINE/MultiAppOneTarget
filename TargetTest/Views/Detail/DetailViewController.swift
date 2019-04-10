//  Created by Alexandre Ménielle on 09/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import UIKit

class DetailViewController : UIViewController {

    let controller = DetailController.instantiate()
    
    static func instantiate(controller : DetailController) -> DetailViewController {
        let storyboard = controller.getStoryboard()
        let viewController = storyboard.instantiateViewController(withIdentifier: "\(DetailViewController.self)") as! DetailViewController
        return viewController
    }
    
}
