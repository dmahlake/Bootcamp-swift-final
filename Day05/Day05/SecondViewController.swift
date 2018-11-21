//
//  SecondViewController.swift
//  Day05
//
//  Created by Dipuo MAHLAKE on 2018/10/09.
//  Copyright © 2018 Dipuo MAHLAKE. All rights reserved.
//

import UIKit
import MapKit

class SecondViewController: UIViewController , MKMapViewDelegate, CLLocationManagerDelegate{

    @IBOutlet var map: MKMapView!
     var LocationManager = CLLocationManager()
    
    @IBAction func expand(_ sender: UIButton)
    {
        self.LocationManager = CLLocationManager()
        self.LocationManager.requestAlwaysAuthorization()
        self.LocationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled()
        {
            LocationManager.delegate = self
            LocationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
            LocationManager.startUpdatingLocation()
        }
    }
    

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locvalue: CLLocationCoordinate2D = manager.location!.coordinate
        print("location \(locvalue.latitude) \(locvalue.longitude)")
        let userLocation = locations.last
        let viewRegion = MKCoordinateRegionMakeWithDistance((userLocation?.coordinate)!,600, 600)
        map.setRegion(viewRegion, animated: true)
        LocationManager.stopUpdatingLocation()
    }
    

    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        let location : CLLocationCoordinate2D = CLLocationCoordinate2DMake(48.896663, 2.318501)
        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        map.setRegion(region, animated: true)
        
       
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        annotation.title = "42"
        annotation.subtitle = "Ecole trop style"
        map.addAnnotation(annotation)
    }

    @IBAction func changeview(_ sender: UISegmentedControl)
    {
        switch (sender.selectedSegmentIndex) {
        case 0:
            map.mapType = .standard
        case 1:
            map.mapType = .satellite
        default:
            map.mapType = .hybrid
        }
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

