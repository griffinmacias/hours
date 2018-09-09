//
//  Activity+CoreDataClass.swift
//  hours
//
//  Created by Mason Macias on 9/8/18.
//  Copyright © 2018 Mason Macias. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Activity)
public class Activity: NSManagedObject {
    
    public init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?, name: String) {
        super.init(entity: entity, insertInto: context)
        self.name = name
    }
    
}
