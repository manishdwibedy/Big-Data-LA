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
    var annotations = [[String:String]]()
    
    @IBAction func valueChanged(sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex
        {
        case 0:
            print("All")
        case 1:
            print("Parking")
        case 2:
            print("Washroom")
        case 3:
            print("Misc")
        default:
            print("Error")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.addAnnotation("event")
        self.addAnnotation("parking")
        self.addAnnotation("washroom")

        //
        corelocationManager.delegate = self
        let authCode = CLLocationManager.authorizationStatus()
        
        if authCode == CLAuthorizationStatus.NotDetermined && corelocationManager.respondsToSelector(#selector(CLLocationManager.requestAlwaysAuthorization)) || corelocationManager.respondsToSelector(#selector(CLLocationManager.requestWhenInUseAuthorization)){
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
    }

    func getLocation(){
        self.mapView.showsUserLocation = true

        locationManager.startUpdatingLocationWithCompletionHandler { (latitude, longitude, status, verboseMessage, error) in
            print(latitude)
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
    
    func locationManager(manager: CLLocationManager, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        if status != CLAuthorizationStatus.NotDetermined || status != CLAuthorizationStatus.Denied || status != CLAuthorizationStatus.Restricted{
            getLocation()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addAnnotation(type: String){
        for annotationData in self.annotations {
            if annotationData["category"] == type{
                let lat = Double(annotationData["lat"]!)
                let long = Double(annotationData["long"]!)
                let annotation = MKPointAnnotation()
                annotation.coordinate = CLLocationCoordinate2D(
                    latitude: lat!,
                    longitude: long!
                )
                annotation.title = annotationData["name"]
                annotation.subtitle = annotationData["description"]
                mapView.addAnnotation(annotation)
            }
            
            if annotationData["category"] == "event"{
                let lat = Double(annotationData["lat"]!)
                let long = Double(annotationData["long"]!)
                
                let location = CLLocationCoordinate2D(
                    latitude: lat!,
                    longitude: long!
                )
                
                // Setting the region
                let span = MKCoordinateSpanMake(0.01, 0.01)
                let region = MKCoordinateRegion(center: location, span: span)
                
                // Assigning the region to the mapView
                mapView.setRegion(region, animated: true)
                
            }
            
        }
        
        

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
