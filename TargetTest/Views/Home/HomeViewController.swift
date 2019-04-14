//  Created by Alexandre Ménielle on 13/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import UIKit

class HomeViewController : UIViewController {

    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var cartLabel: UILabel!
    
    var controller : HomeController!
    
    static func instantiate(controller : HomeController) -> HomeViewController {
        let storyboard = controller.getStoryboard()
        let viewController = storyboard.instantiateViewController(withIdentifier: "\(HomeViewController.self)") as! HomeViewController
        viewController.controller = controller
        return viewController
    }
    
    override func viewDidLoad() {
        self.appNameLabel.text = controller.getAppName()
        self.cartLabel.text = CartModel.instantiate().getArticles()
    }

}
