//
//  Entry+CoreDataProperties.swift
//  
//
//  Created by Mason Macias on 9/10/18.
//
//

import Foundation
import CoreData


extension Entry {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entry> {
        return NSFetchRequest<Entry>(entityName: "Entry")
    }

    @NSManaged public var end: NSDate
    @NSManaged public var start: NSDate
    @NSManaged public var activities: NSSet

}

// MARK: Generated accessors for activities
extension Entry {

    @objc(addActivitiesObject:)
    @NSManaged public func addToActivities(_ value: Activity)

    @objc(removeActivitiesObject:)
    @NSManaged public func removeFromActivities(_ value: Activity)

    @objc(addActivities:)
    @NSManaged public func addToActivities(_ values: NSSet)

    @objc(removeActivities:)
    @NSManaged public func removeFromActivities(_ values: NSSet)

}
