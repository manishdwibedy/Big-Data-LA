//
//  SpeakerDetailViewController.swift
//  Big Data LA
//
//  Created by Manish Dwibedy on 6/10/16.
//  Copyright © 2016 Manish Dwibedy. All rights reserved.
//

import UIKit

class SpeakerDetailViewController: UIViewController {
    var speaker: [String:String] = [:]

    @IBOutlet weak var speakerTitle: UILabel!
    @IBOutlet weak var speakerName: UILabel!
    @IBOutlet weak var navigationBar: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.title = self.speaker["name"]
        speakerName.text = self.speaker["name"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
