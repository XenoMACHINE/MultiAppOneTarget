//
//  HomePromotions.swift
//  TargetTest
//
//  Created by Alexandre Ménielle on 25/04/2019.
//  Copyright © 2019 Alexandre Ménielle. All rights reserved.
//

import ReSwift

class ReduxTestModule : XibView, StoreSubscriber {
   
    typealias StoreSubscriberStateType = AppState
    
    func newState(state: AppState) {
        counterLabel.text = "\(state.counter)"
    }
    
    @IBOutlet weak var counterLabel: UILabel!
        
    override func getNibName() -> String {
        return "\(ReduxTestModule.self)"
    }
    
    override func didMoveToWindow() {
        mainStore.subscribe(self)
    }
    
    @IBAction func onLess(_ sender: Any) {
        mainStore.dispatch(CounterActionDecrease())
    }
    
    @IBAction func onMore(_ sender: Any) {
        mainStore.dispatch(CounterActionIncrease())
    }
}
