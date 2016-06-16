//
//  TalkLocationViewController.swift
//  Big Data LA
//
//  Created by Manish Dwibedy on 6/15/16.
//  Copyright © 2016 Manish Dwibedy. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class TalkLocationViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var navigationBar: UINavigationBar!
    let corelocationManager = CLLocationManager()
    
    var talk = [String:String]()
    var lat:Double = 0.0
    var long:Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationBar.topItem?.title = talk["name"]
        
        showTalkLocation()
        
        corelocationManager.delegate = self
        let authCode = CLLocationManager.authorizationStatus()
        
        if authCode == CLAuthorizationStatus.NotDetermined && corelocationManager.respondsToSelector("requestAlwaysAuthorization") || corelocationManager.respondsToSelector("requestWhenInUseAuthorization"){
            if(NSBundle.mainBundle().objectForInfoDictionaryKey("NSLocationAlwaysUsageDescription") != nil){
                corelocationManager.requestAlwaysAuthorization()
                corelocationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
                corelocationManager.startUpdatingLocation()

                self.mapView.showsUserLocation = true
            }
            else{
                print("No description provided")
            }
        }
    }
    
    func showTalkLocation() {
        self.lat = Double(talk["lat"]!)!
        self.long = Double(talk["long"]!)!
        
        // Setting the location
        let location = CLLocationCoordinate2D(
            latitude: lat,
            longitude: long
        )
        
        // Setting the region
        let span = MKCoordinateSpanMake(0.01, 0.01)
        let region = MKCoordinateRegion(center: location, span: span)
        
        // Assigning the region to the mapView
        mapView.setRegion(region, animated: true)
        
        // Adding an annotation
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = talk["name"]!
        let label = "\(talk["location"]!) (\(talk["time"]!))"
        annotation.subtitle = label
        mapView.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
        
        let newDistance = CLLocation(latitude: locValue.latitude, longitude: locValue.longitude).distanceFromLocation(CLLocation(latitude: self.lat, longitude: self.long))
        let region = MKCoordinateRegionMakeWithDistance(locValue,3 * newDistance, 3 * newDistance)
        let adjustRegion = self.mapView.regionThatFits(region)
        self.mapView.setRegion(adjustRegion, animated:true)
        
        print("locations = \(locValue.latitude) \(locValue.longitude)")
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
