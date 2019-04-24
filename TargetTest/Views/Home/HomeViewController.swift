//  Created by Alexandre Ménielle on 14/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import UIKit

class HomeViewController : UIViewController {

    @IBOutlet weak var titleLAbel: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    var controller : HomeController!
    
    static func instantiate(controller : HomeController) -> HomeViewController {
        let storyboard = controller.getStoryboard()
        let viewController = storyboard.instantiateViewController(withIdentifier: "\(HomeViewController.self)") as! HomeViewController
        viewController.controller = controller
        return viewController
    }
    
    override func viewDidLoad() {
        controller.initUI(viewController: self)
    }

}
