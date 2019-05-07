//
//  Redux.swift
//  TargetTest
//
//  Created by Alexandre Ménielle on 07/05/2019.
//  Copyright © 2019 Alexandre Ménielle. All rights reserved.
//

import ReSwift

let mainStore = Store<AppState>(reducer: appReducer, state: nil)
