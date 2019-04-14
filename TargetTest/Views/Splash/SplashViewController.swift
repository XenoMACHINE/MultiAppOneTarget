//  Created by Alexandre Ménielle on 14/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import UIKit

class SplashViewController : UIViewController {
    
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var erpLabel: UILabel!
    @IBOutlet weak var versionLabel: UILabel!

    var controller : SplashController!
    
    static func instantiate(controller : SplashController) -> SplashViewController {
        let storyboard = controller.getStoryboard()
        let viewController = storyboard.instantiateViewController(withIdentifier: "\(SplashViewController.self)") as! SplashViewController
        viewController.controller = controller
        return viewController
    }
    
    override func viewDidLoad() {
        self.appNameLabel.text = controller.getAppName()
        self.erpLabel.text = controller.getErp()
        self.versionLabel.text = controller.getVersion()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let homeVC = HomeViewController.instantiate(controller: HomeController.instantiate())
            self.present(homeVC, animated: false)
        }
    }

}
