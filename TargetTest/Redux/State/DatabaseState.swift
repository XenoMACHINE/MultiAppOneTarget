//
//  DatabaseState.swift
//  TargetTest
//
//  Created by Alexandre Ménielle on 07/05/2019.
//  Copyright © 2019 Alexandre Ménielle. All rights reserved.
//

import ReSwift

struct DatabaseState: StateType, Equatable {
    static func == (lhs: DatabaseState, rhs: DatabaseState) -> Bool {
        return lhs.products == rhs.products
    }
    
    var products: [Product] = []
}
