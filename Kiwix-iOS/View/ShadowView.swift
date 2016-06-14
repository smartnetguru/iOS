//
//  ShadowView.swift
//  Kiwix
//
//  Created by Chris Li on 6/14/16.
//  Copyright © 2016 Chris. All rights reserved.
//

import UIKit

class TabsContainerView: UIView {

    override func drawRect(rect: CGRect) {
        layer.masksToBounds = false
        
        layer.shadowOffset = CGSizeMake(0, 0)
        layer.shadowRadius = 4.0
        layer.shadowOpacity = 0.5
        layer.shadowRadius = 2.0
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.shadowPath = UIBezierPath(rect: bounds).CGPath
    }

}