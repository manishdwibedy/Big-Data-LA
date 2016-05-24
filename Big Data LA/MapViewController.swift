//
//  MapViewController.swift
//  Big Data LA
//
//  Created by Manish Dwibedy on 5/24/16.
//  Copyright © 2016 Manish Dwibedy. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
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
