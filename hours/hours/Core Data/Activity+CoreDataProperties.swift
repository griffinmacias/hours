//
//  Activity+CoreDataProperties.swift
//  hours
//
//  Created by Mason Macias on 9/8/18.
//  Copyright © 2018 Mason Macias. All rights reserved.
//
//

import Foundation
import CoreData


extension Activity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Activity> {
        return NSFetchRequest<Activity>(entityName: "Activity")
    }

    @NSManaged public var name: String?
    @NSManaged public var entryRelationship: NSSet?

}

// MARK: Generated accessors for entryRelationship
extension Activity {

    @objc(addEntryRelationshipObject:)
    @NSManaged public func addToEntryRelationship(_ value: Entry)

    @objc(removeEntryRelationshipObject:)
    @NSManaged public func removeFromEntryRelationship(_ value: Entry)

    @objc(addEntryRelationship:)
    @NSManaged public func addToEntryRelationship(_ values: NSSet)

    @objc(removeEntryRelationship:)
    @NSManaged public func removeFromEntryRelationship(_ values: NSSet)

}
