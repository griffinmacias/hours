//
//  unitTests.swift
//  hoursTests
//
//  Created by Mason Macias on 9/9/18.
//  Copyright © 2018 Mason Macias. All rights reserved.
//

import Foundation
import Quick
import Nimble
@testable import hours
class ActivitySpec: QuickSpec {
    override func spec() {
        //TODO: need to figure out how to spec out this test
        
        //init core data manager
        
        describe("Core Data Manager") {
            it("all the core functions of the manager", closure: {
                //save activity
                let context = CoreDataManager.shared.persistentContainer.viewContext
                let activity = Activity(entity: Activity.entity(), insertInto: context)
                activity.name = "activity"
                do {
                    try context.save()
                    let activities = try context.fetch(Activity.fetchRequest()) as! [Activity]
                    for activity in activities {
                        print(activity.name)
                        expect(activity.name) == "activity"
                        context.delete(activity)
                    }
                    try context.save()
                } catch let error {
                    print("error saving activity \(error)")
                }
            })
        }
    }
}
