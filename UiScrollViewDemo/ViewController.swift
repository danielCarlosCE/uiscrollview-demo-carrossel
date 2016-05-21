//
//  ViewController.swift
//  UiScrollViewDemo
//
//  Created by Daniel Carlos on 5/21/16.
//  Copyright © 2016 Cocoaheads. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var container: ScrollViewContainer!
    @IBOutlet weak var scrollView: UIScrollView!
    let count = 3
    
    override func viewDidAppear(animated: Bool) {
        
        for index in 0..<count {
            let x = CGFloat(index) * scrollView.frame.width
            let frame = CGRect(x: x, y: 0, width: scrollView.frame.width, height: scrollView.frame.height)
            let frameWithInset = CGRectInset(frame, 10, 0)
            
            
            
            let imageView = UIImageView(frame: frameWithInset)
            imageView.image = UIImage(named: "card\(index)")
            imageView.contentMode = .ScaleAspectFit
            
            scrollView.addSubview(imageView)
        }
        
        let totalWidth = CGFloat(count) * scrollView.frame.width
        scrollView.contentSize = CGSize(width: totalWidth, height: scrollView.frame.height)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        container.scrollView = self.scrollView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

