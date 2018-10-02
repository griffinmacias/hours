//
//  TagView.swift
//  hours
//
//  Created by Mason Macias on 10/2/18.
//  Copyright © 2018 Mason Macias. All rights reserved.
//

import UIKit

class TagView: UIView {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.clipsToBounds = true
        
//        containerView.translatesAutoresizingMaskIntoConstraints = false
//        containerView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//        containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
//        containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
//        containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
}
