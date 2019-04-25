//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___ : UITableViewCell {

    var controller : ___VARIABLE_Prefix___CellController!
    
    static func instantiate(controller : ___VARIABLE_Prefix___CellController) -> ___VARIABLE_Prefix___ViewController {
        let storyboard = controller.getStoryboard()
        let viewController = storyboard.instantiateViewController(withIdentifier: "\(___VARIABLE_Prefix___ViewController.self)") as! ___VARIABLE_Prefix___ViewController
        viewController.controller = controller
        return viewController
    }
    
    override func viewDidLoad() {
        controller.initUI(viewController: self)
    }

}
