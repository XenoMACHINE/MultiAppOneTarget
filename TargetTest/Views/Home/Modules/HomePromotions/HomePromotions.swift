//
//  HomePromotions.swift
//  TargetTest
//
//  Created by Alexandre Ménielle on 25/04/2019.
//  Copyright © 2019 Alexandre Ménielle. All rights reserved.
//

import UIKit
import ReSwift

class HomePromotions : XibView {
   
    @IBOutlet weak var promoList: UILabel!
    
    override func getNibName() -> String {
        return "\(HomePromotions.self)"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        mainStore.subscribe(self) {
            $0.select{ $0.counterState }
        }
    }
    
    func setPromoList(state: CounterState){
        var string = "Liste des promotions : \n\n"
        for i in 1..<state.counter+1{
            string += "Promo \(i)\n"
        }
        promoList.text = string
    }
}

extension HomePromotions : StoreSubscriber {
    typealias StoreSubscriberStateType = CounterState
    
    func newState(state: CounterState) {
        setPromoList(state: state)
    }
}
