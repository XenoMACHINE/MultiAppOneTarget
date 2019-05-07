//
//  HomePromotions.swift
//  TargetTest
//
//  Created by Alexandre Ménielle on 25/04/2019.
//  Copyright © 2019 Alexandre Ménielle. All rights reserved.
//

import UIKit
import ReSwift

class HomePromotions : XibView, StoreSubscriber {
    typealias StoreSubscriberStateType = AppState
    
    func newState(state: AppState) {
        setPromoList(state: state)
    }
   
    @IBOutlet weak var promoList: UILabel!
    
    override func getNibName() -> String {
        return "\(HomePromotions.self)"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        mainStore.subscribe(self)
    }
    
    func setPromoList(state: AppState){
        var string = "Liste des promotions : \n\n"
        for i in 1..<state.counter+1{
            string += "Promo \(i)\n"
        }
        promoList.text = string
    }
    
}
