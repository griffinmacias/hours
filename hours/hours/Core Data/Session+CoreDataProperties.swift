//
//  Session+CoreDataProperties.swift
//  
//
//  Created by Mason Macias on 10/2/18.
//
//

import Foundation
import CoreData


extension Session {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Session> {
        return NSFetchRequest<Session>(entityName: "Session")
    }

    @NSManaged public var end: NSDate
    @NSManaged public var start: NSDate
    @NSManaged public var activity: Activity

}
