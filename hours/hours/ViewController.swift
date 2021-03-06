//
//  ViewController.swift
//  hours
//
//  Created by Mason Macias on 9/8/18.
//  Copyright © 2018 Mason Macias. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activities: [Activity] = []

    @IBOutlet weak var activitiesTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        createActivities()
        getActivities()
        activitiesTableView.reloadData()
    }
    
    func createActivities() {
        
        let context = CoreDataManager.shared.persistentContainer.viewContext
        
        //music
        let music = Activity(entity: Activity.entity(), insertInto: context)
        music.name = "Music"
        
        //create entry
        let musicSession = Session(entity: Session.entity(), insertInto: context)
        musicSession.start = NSDate.init().addingTimeInterval(-1000)
        musicSession.end = NSDate.init()
        
        //add entry
        music.addToSessions(musicSession)

        //drums
        let drums = Activity(entity: Activity.entity(), insertInto: context)
        drums.name = "Drums"
        drums.addToRelatedActivities(music)
        
        //another entry
        let drumSession = Session(entity: Session.entity(), insertInto: context)
        drumSession.start = NSDate.init().addingTimeInterval(-2000)
        drumSession.end = NSDate.init().addingTimeInterval(-100)
        drums.addToSessions(drumSession)
        
        
        
        CoreDataManager.shared.saveContext()
    }
    
    func getActivities() {
        let context = CoreDataManager.shared.persistentContainer.viewContext
        do {
            let activities = try context.fetch(Activity.fetchRequest()) as! [Activity]
            self.activities = activities
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ActivityTableViewCell.self), for: indexPath) as! ActivityTableViewCell
        let activity = activities[indexPath.row]
        cell.nameLabel.text = activity.name
        var value = 0.0
        if let session = activity.sessions?.firstObject as? Session {
            value += session.end.timeIntervalSince(session.start as Date)
        }
        var tags = ""
        if let relatedActivities = activity.relatedActivities {
            for relatedActivity in relatedActivities {
                guard let relatedActivity = relatedActivity as? Activity else { continue }
                tags += (" " + relatedActivity.name)
                if let session = activity.sessions?.firstObject as? Session {
                    value += session.end.timeIntervalSince(session.start as Date)
                }
            }
        }
        //configure
        let tagView = TagView(frame: .zero)
        tagView.backgroundColor = UIColor.green
        tagView.configureTag("tagdfsdkjfk")
        
        cell.tagsStackView.addArrangedSubview(tagView)
        
        tagView.layer.cornerRadius = 10.0
        
        cell.timeLabel.text = String(Int(value / 60))
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75.0
    }
    
}





















