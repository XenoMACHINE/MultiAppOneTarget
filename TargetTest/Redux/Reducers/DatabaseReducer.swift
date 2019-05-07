//
//  DatabaseReducer.swift
//  TargetTest
//
//  Created by Alexandre Ménielle on 07/05/2019.
//  Copyright © 2019 Alexandre Ménielle. All rights reserved.
//

import ReSwift

func DatabaseReducer(action: Action, state: DatabaseState?) -> DatabaseState {
    var state = state ?? DatabaseState()
    
    switch action {
    case _ as DatabaseActionFetchDatabase:
        state.products = ProductDB.fetchAll().map({ $0.toProduct() })
        
    case let action as DatabaseActionAddProduct:
        ProductDB.create(product: action.product)
        state.products.append(action.product)
        
    case _ as DatabaseActionDeleteLastProduct:
        ProductDB.delete(productDB: ProductDB.fetchAll().last)
        state.products.removeLast()
        
    default:
        break
    }
    
    return state
}
