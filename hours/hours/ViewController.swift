//
//  ViewController.swift
//  hours
//
//  Created by Mason Macias on 9/8/18.
//  Copyright © 2018 Mason Macias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            let context = appDelegate.persistentContainer.viewContext
            
            //create actvity
            
            //music
            let music = Activity(entity: Activity.entity(), insertInto: context)
            music.name = "Music"
            
            //create entry
            let session = Session(entity: Session.entity(), insertInto: context)
            session.start = NSDate.init().addingTimeInterval(-1000)
            session.end = NSDate.init()
            
            //add entry
            music.addToSessions(session)
            
            
            
            //drums
            let drums = Activity(entity: Activity.entity(), insertInto: context)
            drums.name = "Drums"
            drums.addToRelatedActivities(music)
            
            //another entry
            let session2 = Session(entity: Session.entity(), insertInto: context)
            session.start = NSDate.init().addingTimeInterval(-2000)
            session.end = NSDate.init().addingTimeInterval(-100)
            drums.addToSessions(session2)
            
            
            //now i need to calculate the amount of sessions length there are for music
            
            //get music's current value
            if let musicSessions = music.sessions {
                var valueOfTime: TimeInterval = 0.0
                for session in musicSessions {
                    guard let startDate = (session as AnyObject).start, let endDate = (session as AnyObject).end else { return }
                    valueOfTime += endDate.timeIntervalSince(startDate as Date)
                }
            }
            
            //look for activities that have music as a related activity
            
            //grab its sessions and add it to the valueOfTime
            
            //needs to recursively call to figure out all the subtrees 
        }
    }
    
    func getActivities() {
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            let context = appDelegate.persistentContainer.viewContext
            do {
                let activities = try context.fetch(Activity.fetchRequest())
                print(activities)
            } catch let error as NSError {
                print("Could not fetch. \(error), \(error.userInfo)")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

