//
//  HomePromotions.swift
//  TargetTest
//
//  Created by Alexandre Ménielle on 25/04/2019.
//  Copyright © 2019 Alexandre Ménielle. All rights reserved.
//

import UIKit

class HomePromotions : XibView {
   
    @IBOutlet weak var promoList: UILabel!
    
    override func getNibName() -> String {
        return "\(HomePromotions.self)"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setPromoList()
    }
    
    func setPromoList(){
        promoList.text = "Liste des promotions : \n\nPromo 1\nPromo 2\nPromo 3"
    }
    
}
