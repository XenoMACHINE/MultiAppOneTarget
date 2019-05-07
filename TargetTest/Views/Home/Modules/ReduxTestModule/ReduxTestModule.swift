//
//  HomePromotions.swift
//  TargetTest
//
//  Created by Alexandre Ménielle on 25/04/2019.
//  Copyright © 2019 Alexandre Ménielle. All rights reserved.
//

import UIKit

class ReduxTestModule : XibView {
   
    @IBOutlet weak var counterLabel: UILabel!
        
    override func getNibName() -> String {
        return "\(ReduxTestModule.self)"
    }
    
    override func didMoveToWindow() {
        //store.subscribe(self)
    }
    
    @IBAction func onLess(_ sender: Any) {
        //store.dispatch(action: DecreaseAction(decreaseBy: 1))
    }
    
    @IBAction func onMore(_ sender: Any) {
        //store.dispatch(action: IncreaseAction(increaseBy: 1))
    }
}

//extension ReduxTestModule : StoreSubscriber {
//    func newState(state: State) {
//        guard let appState = state as? AppState else { return }
//        counterLabel.text = "\(appState.counter)"
//    }
//}
