//
//  ViewController.swift
//  Big Data LA
//
//  Created by Manish Dwibedy on 5/21/16.
//  Copyright © 2016 Manish Dwibedy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(API.getSpeaker())
        // Do any additional setup after loading the view, typically from a nib.
        
        API.getAnnotations()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "showMap") {
            let mapViewController = segue.destinationViewController as? MapViewController
            mapViewController!.annotations = API.annotations
            
        }
    }

}

