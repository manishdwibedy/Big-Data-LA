//
//  SpeakerDetailViewController.swift
//  Big Data LA
//
//  Created by Manish Dwibedy on 6/10/16.
//  Copyright © 2016 Manish Dwibedy. All rights reserved.
//

import UIKit

class SpeakerDetailViewController: UIViewController {
    var toPass:String!

    @IBOutlet weak var speakerTitle: UINavigationItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        print()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
