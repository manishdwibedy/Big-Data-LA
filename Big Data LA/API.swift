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
                            "id": object["id"].stringValue,
                            "name" : object["name"].stringValue,
                            "title" : object["title"].stringValue,
                            "about" : object["about"].stringValue
                        ]
                        API.speakers.append(speaker)
                    }
                }
            
        }
    }
    
    static func getTalkDetails(speakerName: String) -> String{
        let URL = API_CONSTANTS.getSpeakerURL()
        print("Calling API Now for " + speakerName)
//        Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["foo": "bar"])
//            .responseJSON { response in
//                print(response.request)  // original URL request
//                print(response.response) // URL response
//                print(response.data)     // server data
//                print(response.result)   // result of response serialization
//                
//                if let JSON = response.result.value {
//                    print("JSON: \(JSON)")
//                }
//        }
        return "Talk Details"
    }
}