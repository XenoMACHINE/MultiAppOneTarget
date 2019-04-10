//
//  ViewController.swift
//  TargetTest
//
//  Created by Alexandre Ménielle on 09/04/2019.
//  Copyright © 2019 Alexandre Ménielle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    let controller = HomeController.instantiate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.welcomeLabel.text = controller.welcome()
        self.view.backgroundColor = controller.getMainColor()
    }
    
    @IBAction func onClick(_ sender: Any) {
        let productPageController = ProductPageController.instantiate()
        let productPage = ProductPageViewController.instantiate(controller: productPageController)
        self.present(productPage, animated: true)
    }
}
