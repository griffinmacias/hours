//
//  Activity+CoreDataProperties.swift
//  
//
//  Created by Mason Macias on 9/23/18.
//
//

import Foundation
import CoreData


extension Activity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Activity> {
        return NSFetchRequest<Activity>(entityName: "Activity")
    }

    @NSManaged public var name: String
    @NSManaged public var relatedActivities: NSOrderedSet?
    @NSManaged public var sessions: NSOrderedSet?

}

// MARK: Generated accessors for relatedActivities
extension Activity {

    @objc(insertObject:inRelatedActivitiesAtIndex:)
    @NSManaged public func insertIntoRelatedActivities(_ value: Activity, at idx: Int)

    @objc(removeObjectFromRelatedActivitiesAtIndex:)
    @NSManaged public func removeFromRelatedActivities(at idx: Int)

    @objc(insertRelatedActivities:atIndexes:)
    @NSManaged public func insertIntoRelatedActivities(_ values: [Activity], at indexes: NSIndexSet)

    @objc(removeRelatedActivitiesAtIndexes:)
    @NSManaged public func removeFromRelatedActivities(at indexes: NSIndexSet)

    @objc(replaceObjectInRelatedActivitiesAtIndex:withObject:)
    @NSManaged public func replaceRelatedActivities(at idx: Int, with value: Activity)

    @objc(replaceRelatedActivitiesAtIndexes:withRelatedActivities:)
    @NSManaged public func replaceRelatedActivities(at indexes: NSIndexSet, with values: [Activity])

    @objc(addRelatedActivitiesObject:)
    @NSManaged public func addToRelatedActivities(_ value: Activity)

    @objc(removeRelatedActivitiesObject:)
    @NSManaged public func removeFromRelatedActivities(_ value: Activity)

    @objc(addRelatedActivities:)
    @NSManaged public func addToRelatedActivities(_ values: NSOrderedSet)

    @objc(removeRelatedActivities:)
    @NSManaged public func removeFromRelatedActivities(_ values: NSOrderedSet)

}

// MARK: Generated accessors for sessions
extension Activity {

    @objc(insertObject:inSessionsAtIndex:)
    @NSManaged public func insertIntoSessions(_ value: Session, at idx: Int)

    @objc(removeObjectFromSessionsAtIndex:)
    @NSManaged public func removeFromSessions(at idx: Int)

    @objc(insertSessions:atIndexes:)
    @NSManaged public func insertIntoSessions(_ values: [Session], at indexes: NSIndexSet)

    @objc(removeSessionsAtIndexes:)
    @NSManaged public func removeFromSessions(at indexes: NSIndexSet)

    @objc(replaceObjectInSessionsAtIndex:withObject:)
    @NSManaged public func replaceSessions(at idx: Int, with value: Session)

    @objc(replaceSessionsAtIndexes:withSessions:)
    @NSManaged public func replaceSessions(at indexes: NSIndexSet, with values: [Session])

    @objc(addSessionsObject:)
    @NSManaged public func addToSessions(_ value: Session)

    @objc(removeSessionsObject:)
    @NSManaged public func removeFromSessions(_ value: Session)

    @objc(addSessions:)
    @NSManaged public func addToSessions(_ values: NSOrderedSet)

    @objc(removeSessions:)
    @NSManaged public func removeFromSessions(_ values: NSOrderedSet)

}
