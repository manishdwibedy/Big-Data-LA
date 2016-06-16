//
//  MapViewController.swift
//  Big Data LA
//
//  Created by Manish Dwibedy on 5/24/16.
//  Copyright © 2016 Manish Dwibedy. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    let corelocationManager = CLLocationManager()
    let locationManager: LocationManager = LocationManager.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Setting the location
        let location = CLLocationCoordinate2D(
            latitude: 34.004281,
            longitude: -118.386846
        )
        
        // Setting the region
        let span = MKCoordinateSpanMake(0.01, 0.01)
        let region = MKCoordinateRegion(center: location, span: span)
        
        // Assigning the region to the mapView
        mapView.setRegion(region, animated: true)
        
        // Adding an annotation
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Big Data LA 2016"
        annotation.subtitle = "West LA College"
        mapView.addAnnotation(annotation)
        
        let parking = MKPointAnnotation()
        parking.coordinate = CLLocationCoordinate2D(
            latitude: 34.002299,
            longitude: -118.386121
        )
        parking.title = "Parking"
        parking.subtitle = "Dummy"
        mapView.addAnnotation(parking)
        
        //
        corelocationManager.delegate = self
        let authCode = CLLocationManager.authorizationStatus()
        
        if authCode == CLAuthorizationStatus.NotDetermined && corelocationManager.respondsToSelector("requestAlwaysAuthorization") || corelocationManager.respondsToSelector("requestWhenInUseAuthorization"){
            if(NSBundle.mainBundle().objectForInfoDictionaryKey("NSLocationAlwaysUsageDescription") != nil){
                corelocationManager.requestAlwaysAuthorization()
            }
            else{
                print("No description provided")
            }
        }
        else{
            getLocation()
        }
//        self.mapView.showsUserLocation = true
//        
//        self.mapView.removeAnnotations(self.mapView.annotations)
//        
//        
//        
//        
//        
//        locationManager.delegate = self
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//        locationManager.requestAlwaysAuthorization()
//        locationManager.startUpdatingLocation()
//        
//        
//        let currentLocation = self.locationManager.location
//        
//        let latitude: Double = currentLocation!.coordinate.latitude
//        let longitude: Double = currentLocation!.coordinate.longitude
//        
//        print("current latitude :: \(latitude)")
//        print("current longitude :: \(longitude)")
    }

    func getLocation(){
        self.mapView.showsUserLocation = true

        locationManager.startUpdatingLocationWithCompletionHandler { (latitude, longitude, status, verboseMessage, error) in
//            self.displayLocation(CLLocation(latitude: latitude, longitude: longitude))
        }
        
    }
    
    func displayLocation(location:CLLocation){
        mapView.setRegion(MKCoordinateRegion(center: CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude), span: MKCoordinateSpanMake(0.05, 0.05)), animated: true)
        
        let locationPinCoord = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        let annotation = MKPointAnnotation()
        annotation.coordinate = locationPinCoord
        
        mapView.addAnnotation(annotation)
        mapView.showAnnotations([annotation], animated: true)
        
    }
    
    func locationManager(manager: CLLocationManager!, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        if status != CLAuthorizationStatus.NotDetermined || status != CLAuthorizationStatus.Denied || status != CLAuthorizationStatus.Restricted{
            getLocation()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
