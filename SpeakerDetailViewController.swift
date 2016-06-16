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

    @IBOutlet weak var navigationBar: UINavigationBar!
    @IBOutlet weak var speakerName: UILabel!
    @IBOutlet weak var speakerTitle: UILabel!
    @IBOutlet weak var speakerAbout: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        navigationBar.topItem?.title = self.speaker["name"]
        speakerName.text = self.speaker["name"]
        speakerTitle.text = self.speaker["title"]
        speakerAbout.text = self.speaker["about"]
        speakerAbout.scrollRangeToVisible(NSMakeRange(0, 0))
    }
}
