//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___ : UIViewController {

    var controller : ___VARIABLE_PageName___Controller!
    
    static func instantiate(controller : ___VARIABLE_PageName___Controller) -> ___VARIABLE_PageName___ViewController {
        let storyboard = UIStoryboard(name: "___VARIABLE_PageName___", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "\(___VARIABLE_PageName___ViewController.self)") as! ___VARIABLE_PageName___ViewController
        viewController.controller = controller
        return viewController
    }
    
    override func viewDidLoad() {
        controller.initUI(viewController: self)
    }

}
