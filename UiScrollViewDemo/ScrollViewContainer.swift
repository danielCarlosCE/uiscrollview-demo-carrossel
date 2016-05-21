//
//  ScrollViewContainer.swift
//  MinhaGestacao
//
//  Created by Daniel Carlos on 3/29/16.
//  Copyright © 2016 Scoop Tecnologia. All rights reserved.
//

import UIKit

class ScrollViewContainer: UIView {
    @IBOutlet var scrollView: UIScrollView!
    
    override func hitTest(point: CGPoint, withEvent event: UIEvent!) -> UIView? {
        let view = super.hitTest(point, withEvent: event)
        if let theView = view where theView == self {
           return scrollView
        }
        return view
    }
}
