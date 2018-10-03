//
//  TagView.swift
//  hours
//
//  Created by Mason Macias on 10/2/18.
//  Copyright © 2018 Mason Macias. All rights reserved.
//

import UIKit

class TagView: UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func configureTags(_ tags: [TagViewModel]) {
        //implement
    }
    
    func configureTag(_ tag: String) {
        nameLabel.text = tag
        nameLabel.sizeToFit()
        translatesAutoresizingMaskIntoConstraints = false
        let padding: CGFloat = 8.0
        let width = nameLabel.intrinsicContentSize.width
        self.widthAnchor.constraint(equalToConstant: width + padding).isActive = true
        self.heightAnchor.constraint(equalToConstant: nameLabel.intrinsicContentSize.height + padding).isActive = true
        layer.cornerRadius = width / 5
    }
    
    func commonInit() {
        //nib load
        Bundle.main.loadNibNamed(String(describing: TagView.self), owner: self, options: nil)
        
        //view setup
        clipsToBounds = true
        contentView.frame = bounds
        contentView.backgroundColor = UIColor.clear
        addSubview(contentView)
        
        //constraints
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
    }
    
}
