//  Created by Alexandre Ménielle on 14/04/2019.
//Copyright © 2019 Alexandre Ménielle. All rights reserved.

import UIKit

class HomeViewController : UIViewController {

    @IBOutlet weak var titleLAbel: UILabel!
    
    var controller : HomeController!
    
    //TODO Test avec Xib + virer getStroyboard du template
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
