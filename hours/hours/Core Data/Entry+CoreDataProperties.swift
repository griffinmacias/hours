//
//  Entry+CoreDataProperties.swift
//  hours
//
//  Created by Mason Macias on 9/8/18.
//  Copyright © 2018 Mason Macias. All rights reserved.
//
//

import Foundation
import CoreData


extension Entry {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entry> {
        return NSFetchRequest<Entry>(entityName: "Entry")
    }

    @NSManaged public var start: NSDate
    @NSManaged public var end: NSDate
    @NSManaged public var activityRelationship: NSSet

}

// MARK: Generated accessors for activityRelationship
extension Entry {

    @objc(addActivityRelationshipObject:)
    @NSManaged public func addToActivityRelationship(_ value: Activity)

    @objc(removeActivityRelationshipObject:)
    @NSManaged public func removeFromActivityRelationship(_ value: Activity)

    @objc(addActivityRelationship:)
    @NSManaged public func addToActivityRelationship(_ values: NSSet)

    @objc(removeActivityRelationship:)
    @NSManaged public func removeFromActivityRelationship(_ values: NSSet)

}
