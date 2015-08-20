//
//  ViewController.swift
//  PinPoint
//
//  Created by Super Admin on 15/8/20.
//  Copyright (c) 2015年 Super Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, MAMapViewDelegate {

    
    var mapview: MAMapView!
    var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initmapview()
        // Do any additional setup after loading the view, typically from a nib.
        initControl()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func initmapview(){
        MAMapServices.sharedServices().apiKey = apikey
        mapview = MAMapView(frame: CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height))
        self.view.addSubview(mapview!)
    }
    
    func initControl(){
        button = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
        button!.frame = CGRectMake(10, 500, 40, 40)
        button.setImage(UIImage(named: "search"), forState: UIControlState.Normal)
        self.mapview?.addSubview(button!)
        
        button.addTarget(self, action: "locateAction", forControlEvents: UIControlEvents.TouchUpInside)
        
    }
    func locateAction(){
        if mapview?.userTrackingMode != MAUserTrackingMode.Follow{
            mapview?.setUserTrackingMode(MAUserTrackingMode.Follow, animated: true)
        }
    }
    func mapView(mapView: MAMapView!, didChangeUserTrackingMode mode: MAUserTrackingMode, animated: Bool) {
        if mode == MAUserTrackingMode.None{
            button?.setImage(UIImage(named: "location_no"), forState: UIControlState.Normal)
        }else{
            button!.setImage(UIImage(named: "location_yes"), forState: UIControlState.Normal)
            
        }
    }
}

