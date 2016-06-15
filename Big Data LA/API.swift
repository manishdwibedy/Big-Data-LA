//
//  API.swift
//  Big Data LA
//
//  Created by Manish Dwibedy on 6/11/16.
//  Copyright © 2016 Manish Dwibedy. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class API{
    static var speakers = [[String:String]]()
    
    static func getSpeaker(){
        let URL = API_CONSTANTS.getSpeakerURL()
        
        
        Alamofire.request(.GET, URL).responseJSON {
            response in
                if let speakersJSON = response.result.value {
                    let speakersArray = JSON(speakersJSON)
                    
                    
                    for (_, object) in speakersArray {
                        let speaker: [String:String] = [
                            "id": object["_id"]["$oid"].stringValue,
                            "name" : object["name"].stringValue,
                            "title" : object["title"].stringValue,
                            "about" : object["about"].stringValue
                        ]
                        API.speakers.append(speaker)
                    }
                }
        }
    }
    
    static func getTalkDetails(speakerID: String) -> String{
        let URL = API_CONSTANTS.getTalkURL(speakerID)
        print("Calling API Now for " + speakerID)
        Alamofire.request(.GET, URL)
            .responseJSON { response in
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
        }
        return "Talk Details"
    }
}