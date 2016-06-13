//
//  SpeakerTalksViewController.swift
//  Big Data LA
//
//  Created by Manish Dwibedy on 6/11/16.
//  Copyright © 2016 Manish Dwibedy. All rights reserved.
//

import UIKit
import Alamofire

class SpeakerTalksViewController: UIViewController {
    var speaker: [String:String] = [:]

    @IBOutlet weak var navigationBar: UINavigationBar!
    @IBOutlet weak var talkDetails: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.topItem?.title = speaker["name"]
        talkDetails.setContentOffset(CGPointZero, animated: false)
        Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["foo": "bar"])
            .responseJSON { response in
                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
