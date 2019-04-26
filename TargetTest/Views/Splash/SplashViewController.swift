//  Created by Alexandre Ménielle on 14/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import UIKit

class SplashViewController : UIViewController {

    @IBOutlet weak var appNameLabel: UILabel!
    
    var controller : SplashController!
    
    static func instantiate(controller : SplashController) -> SplashViewController {
        let storyboard = UIStoryboard(name: "Splash", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "\(SplashViewController.self)") as! SplashViewController
        viewController.controller = controller
        return viewController
    }
    
    override func viewDidLoad() {
        
        controller.initUI(viewController: self)
        controller.loadData {
            let homeVC = HomeViewController.instantiate(controller: HomeController.instantiate())
            self.present(homeVC, animated: false)
        }
    }

}
