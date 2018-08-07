//
//  ViewController.swift
//  CustomSegmentControl
//
//  Created by vgsathish1995@gmail.com on 08/04/2018.
//  Copyright (c) 2018 vgsathish1995@gmail.com. All rights reserved.
//

import UIKit
import CustomSegmentControl

class ViewController: UIViewController, CallBackOnTapOfButton {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let customSegmented = CustomSegmented(frame: CGRect(x: 0, y: 50, width: self.view.frame.width, height: 50), buttonTitles: ["On", "Off", "Neutral", "Custom"])
        
        // Plz maintain the order otherwise swipe will not work by chance
        view.addSubview(customSegmented)
        customSegmented.onsegmentTapped = self
        customSegmented.configViews()
    }
    
    func didSegmentButtonTapped(ofIndex index: Int) {
        print("Index of Segment tapped \(index)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

