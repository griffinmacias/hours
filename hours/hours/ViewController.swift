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
            
            //drums
            let drums = Activity(entity: Activity.entity(), insertInto: context)
            drums.name = "Drums"
            
            
            //create entry
            let entry = Entry(entity: Entry.entity(), insertInto: context)
            entry.start = NSDate.init().addingTimeInterval(-1000)
            entry.end = NSDate.init()
            
            //another entry
            
            
            //add entry
            music.addToEntries(entry)
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

