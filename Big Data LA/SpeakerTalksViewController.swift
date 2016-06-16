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
    @IBOutlet weak var sessionName: UILabel!
    @IBOutlet weak var sessionLocation: UILabel!
    @IBOutlet weak var sessionTime: UILabel!
    @IBOutlet weak var sessionDetails: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let talk = API.talk
        sessionName.text = talk["name"]
        sessionLocation.text = talk["location"]
        sessionTime.text = talk["time"]
        navigationBar.topItem?.title = speaker["name"]
        sessionDetails.text = talk["about"]
    }
    
    override func viewDidAppear(animated: Bool) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
