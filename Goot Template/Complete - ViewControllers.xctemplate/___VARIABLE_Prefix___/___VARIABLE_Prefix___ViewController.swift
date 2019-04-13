//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___ : UIViewController {

    let controller = ___VARIABLE_Prefix___Controller.instantiate()
    
    static func instantiate(controller : ___VARIABLE_Prefix___Controller) -> ___VARIABLE_Prefix___ViewController {
        let storyboard = controller.getStoryboard()
        let viewController = storyboard.instantiateViewController(withIdentifier: "\(___VARIABLE_Prefix___ViewController.self)") as! ___VARIABLE_Prefix___ViewController
        return viewController
    }

}
