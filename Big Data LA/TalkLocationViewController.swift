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
        let lat = Double(talk["lat"]!)!
        let long = Double(talk["long"]!)!
        
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
        
        var userLoc = self.mapView.userLocation
        
//        let newDistance = CLLocation(latitude: userLoc.coordinate.latitude, longitude: userLoc.coordinate.longitude).distanceFromLocation(CLLocation(latitude: annotation.latitude, longitude: annotation.longitude))
//        let region = MKCoordinateRegionMakeWithDistance(userLoc.coordinate,2 * newDistance, 2 * newDistance)
//        let adjustRegion = self.mapView.regionThatFits(region)
//        self.mapView.setRegion(adjustRegion, animated:true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
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
