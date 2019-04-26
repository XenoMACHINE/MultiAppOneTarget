//  Created by Alexandre Ménielle on 26/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import UIKit

class HomeViewController : UIViewController {

    var controller : HomeController!
    
    static func instantiate(controller : HomeController) -> HomeViewController {
        let storyboard = UIStoryboard(name: "Home", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "\(HomeViewController.self)") as! HomeViewController
        viewController.controller = controller
        return viewController
    }
    
    override func viewDidLoad() {
        controller.initUI(viewController: self)
    }

}
