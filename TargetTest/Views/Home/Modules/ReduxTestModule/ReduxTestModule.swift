//
//  HomePromotions.swift
//  TargetTest
//
//  Created by Alexandre Ménielle on 25/04/2019.
//  Copyright © 2019 Alexandre Ménielle. All rights reserved.
//

import ReSwift

class ReduxTestModule : XibView {
    
    @IBOutlet weak var counterLabel: UILabel!
        
    override func getNibName() -> String {
        return "\(ReduxTestModule.self)"
    }
    
    override func didMoveToWindow() {
        mainStore.subscribe(self) {
            $0.select{ $0.databaseState }
        }
    }
    
    @IBAction func onLess(_ sender: Any) {
        //mainStore.dispatch(CounterActionDecrease())
        mainStore.dispatch(DatabaseActionDeleteLastProduct())
    }
    
    @IBAction func onMore(_ sender: Any) {
        //mainStore.dispatch(CounterActionIncrease())
        mainStore.dispatch(DatabaseActionAddProduct(product: Product(id: "2", name: "Coca")))
    }
}

extension ReduxTestModule : StoreSubscriber {
    typealias StoreSubscriberStateType = DatabaseState
    
    func newState(state: DatabaseState) {
        self.counterLabel.text = "\(state.products.count)"
    }
}
