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
    
    override func viewWillAppear(animated: Bool) {
        let speakerName = speaker["name"]!
        let talkDetails = API.getTalkDetails(speakerName)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.topItem?.title = speaker["name"]
        talkDetails.setContentOffset(CGPointZero, animated: false)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
