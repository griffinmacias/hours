//
//  Activity+CoreDataProperties.swift
//  
//
//  Created by Mason Macias on 9/11/18.
//
//

import Foundation
import CoreData


extension Activity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Activity> {
        return NSFetchRequest<Activity>(entityName: "Activity")
    }

    @NSManaged public var name: String
    @NSManaged public var sessions: NSSet?
    @NSManaged public var relatedActivities: NSSet?

}

// MARK: Generated accessors for sessions
extension Activity {

    @objc(addSessionsObject:)
    @NSManaged public func addToSessions(_ value: Session)

    @objc(removeSessionsObject:)
    @NSManaged public func removeFromSessions(_ value: Session)

    @objc(addSessions:)
    @NSManaged public func addToSessions(_ values: NSSet)

    @objc(removeSessions:)
    @NSManaged public func removeFromSessions(_ values: NSSet)

}

// MARK: Generated accessors for relatedActivities
extension Activity {

    @objc(addRelatedActivitiesObject:)
    @NSManaged public func addToRelatedActivities(_ value: Activity)

    @objc(removeRelatedActivitiesObject:)
    @NSManaged public func removeFromRelatedActivities(_ value: Activity)

    @objc(addRelatedActivities:)
    @NSManaged public func addToRelatedActivities(_ values: NSSet)

    @objc(removeRelatedActivities:)
    @NSManaged public func removeFromRelatedActivities(_ values: NSSet)

}
