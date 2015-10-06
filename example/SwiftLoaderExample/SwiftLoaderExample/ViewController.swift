//
//  ViewController.swift
//  SwiftLoaderExample
//
//  Created by Kirill Kunst on 11.02.15.
//  Copyright (c) 2015 Kirill Kunst. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func delay(seconds seconds: Double, completion:()->()) {
        let popTime = dispatch_time(DISPATCH_TIME_NOW, Int64( Double(NSEC_PER_SEC) * seconds ))
        
        dispatch_after(popTime, dispatch_get_main_queue()) {
            completion()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        let imageView = UIImageView(image: UIImage(named: "Tux"))
        self.view.addSubview(imageView)
        
        self.addButton()
    }
    
    func addButton() {
        let size : CGFloat = 200.0
        let actionButton = UIButton(frame: CGRectMake((self.view.frame.width - size) / 2, size, size, size))
        actionButton.setTitleColor(UIColor(red:0.52, green:0.07, blue:0.72, alpha:1), forState: UIControlState.Normal)
        actionButton.addTarget(self, action: Selector("actionShowLoader"), forControlEvents: UIControlEvents.TouchUpInside)
        actionButton.setTitle("Show loader", forState: UIControlState.Normal)
        self.view.addSubview(actionButton)
    }
    
    func actionShowLoader() {
        
        var config : SwiftLoader.Config = SwiftLoader.Config()
        config.size = 170
        config.backgroundColor = UIColor.clearColor()
        config.spinnerColor = UIColor(red: 240.0/255.0, green: 4.0/255.0, blue: 59.0/255.0, alpha: 1.0)
        config.titleTextColor = UIColor(red: 240.0/255.0, green: 4.0/255.0, blue: 59.0/255.0, alpha: 1.0)
        config.spinnerLineWidth = 2.0
        config.foregroundColor = UIColor.blackColor()
        config.foregroundAlpha = 0.5
        config.speed = 1.5
        config.foregroundGlassEffect = true
        
        
        SwiftLoader.setConfig(config)
        
        SwiftLoader.show()
        
        delay(seconds: 1.0) { () -> () in
            SwiftLoader.show(title: "Just a second")
        }
        delay(seconds: 2.0) { () -> () in
            SwiftLoader.hide()
        }
        
    }
    
    
}

