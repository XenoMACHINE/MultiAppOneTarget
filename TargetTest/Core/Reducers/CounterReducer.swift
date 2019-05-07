//
//  CounterReducer.swift
//  TargetTest
//
//  Created by Alexandre Ménielle on 07/05/2019.
//  Copyright © 2019 Alexandre Ménielle. All rights reserved.
//

import ReSwift

func counterReducer(action: Action, state: AppState?) -> AppState {
    var state = state ?? AppState()
    
    switch action {
    case _ as CounterActionIncrease:
        state.counter += 1
    case _ as CounterActionDecrease:
        state.counter -= 1
    default:
        break
    }
    
    return state
}
