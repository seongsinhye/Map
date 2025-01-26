//
//  ViewController.swift
//  Map
//
//  Created by 성신혜 on 1/25/25.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    let locationManger = CLLocationManager()
    @IBOutlet var myMap: MKMapView!
    
    @IBOutlet var lbLocationInfo1: UILabel!
    
    @IBOutlet var lbLocationInfo2: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lbLocationInfo1.text = ""
        lbLocationInfo2.text = ""
        locationManger.delegate = self
        locationManger.desiredAccuracy = kCLLocationAccuracyBest
        locationManger.requestWhenInUseAuthorization()
        locationManger.startUpdatingLocation()
        myMap.showsUserLocation = true
        
    }

    @IBAction func sgChangeLocation(_ sender: UISegmentedControl) {
    }
    
}

