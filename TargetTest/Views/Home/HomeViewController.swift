//  Created by Alexandre Ménielle on 13/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import UIKit

class HomeViewController : UIViewController {

    @IBOutlet weak var appNameLabel: UILabel!
    
    let controller = HomeController.instantiate()
    
    static func instantiate(controller : HomeController) -> HomeViewController {
        let storyboard = controller.getStoryboard()
        let viewController = storyboard.instantiateViewController(withIdentifier: "\(HomeViewController.self)") as! HomeViewController
        return viewController
    }
    
    override func viewDidLoad() {
        self.appNameLabel.text = controller.getAppName()
    }

}
