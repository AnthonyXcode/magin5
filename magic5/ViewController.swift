//
//  ViewController.swift
//  magic5
//
//  Created by Anthony on 7/11/16.
//  Copyright © 2016 Anthony. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        image.image = UIImage(named: "havecoin")
        UIDevice.currentDevice().proximityMonitoringEnabled = true
        if UIDevice.currentDevice().proximityMonitoringEnabled == true{
            NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ViewController.proximitySensorStateChange(_:)), name: UIDeviceProximityStateDidChangeNotification, object: nil)
        }
    }
    
    func proximitySensorStateChange(notification:NSNotification) {
        image.image = UIImage(named: "nocoin")
        //print("something approching or leaving")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

