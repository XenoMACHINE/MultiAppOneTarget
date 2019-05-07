//
//  ProductDB.swift
//  TargetTest
//
//  Created by Alexandre Ménielle on 07/05/2019.
//  Copyright © 2019 Alexandre Ménielle. All rights reserved.
//

import CoreData

@objc(ProductDB)
class ProductDB: NSManagedObject {
    
    //TODO introspection sur classe globale si possible
    static func fetchAll() -> [ProductDB] {
        let request = NSFetchRequest<ProductDB>(entityName: "ProductDB")
        return (try? context.fetch(request)) ?? []
    }
    
    static func create(product: Product) {
        let managedObject = ProductDB(context: context)
        managedObject.id = product.id
        managedObject.name = product.name
        try? context.save()
    }
    
    static func delete(productDB: ProductDB?) {
        guard let productDB = productDB else { return }
        context.delete(productDB)
        try? context.save()
    }
    
    func toProduct() -> Product {
        return Product(id : self.id, name: self.name)
    }
}
