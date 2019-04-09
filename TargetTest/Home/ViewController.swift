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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let controller = Controller.instantiate()
        
        self.welcomeLabel.text = controller.welcome()
        self.view.backgroundColor = controller.getMainColor()
    }
}

