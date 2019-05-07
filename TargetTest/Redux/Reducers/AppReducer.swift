//
//  AppReducer.swift
//  TargetTest
//
//  Created by Alexandre Ménielle on 07/05/2019.
//  Copyright © 2019 Alexandre Ménielle. All rights reserved.
//

import ReSwift

func appReducer(action: Action, state: AppState?) -> AppState {
    return AppState(
        counterState: counterReducer(action: action, state: state?.counterState)
    )
}
