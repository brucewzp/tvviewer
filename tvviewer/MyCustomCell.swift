//
//  MyCustomCell.swift
//  tvviewer
//
//  Created by Bruce Wu on 6/21/16.
//  Copyright © 2016 brucewzp. All rights reserved.
//

import UIKit
class MyCustomCell: UITableViewCell {
    
    var myLabel = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        myLabel.backgroundColor = UIColor.yellowColor()
        self.contentView.addSubview(myLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        myLabel.frame = CGRect(x: 20, y: 0, width: 70, height: 30)
    }
}