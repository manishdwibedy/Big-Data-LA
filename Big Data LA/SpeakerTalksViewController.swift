//
//  SpeakerTalksViewController.swift
//  Big Data LA
//
//  Created by Manish Dwibedy on 6/11/16.
//  Copyright © 2016 Manish Dwibedy. All rights reserved.
//

import UIKit

class SpeakerTalksViewController: UIViewController {
    var speaker: [String:String] = [:]

    @IBOutlet weak var navigationBar: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.topItem?.title = speaker["name"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
