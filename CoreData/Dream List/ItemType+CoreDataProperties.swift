//
//  ItemType+CoreDataProperties.swift
//  CoreData
//
//  Created by Muhammad Aamir on 18/07/2017.
//  Copyright © 2017 Muhammad Aamir. All rights reserved.
//

import Foundation
import CoreData


extension ItemType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ItemType> {
        return NSFetchRequest<ItemType>(entityName: "ItemType")
    }

    @NSManaged public var type: String?
    @NSManaged public var toItem: Item?

}
