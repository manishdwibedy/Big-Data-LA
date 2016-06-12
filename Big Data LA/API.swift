//
//  API.swift
//  Big Data LA
//
//  Created by Manish Dwibedy on 6/11/16.
//  Copyright © 2016 Manish Dwibedy. All rights reserved.
//

import Foundation
import Alamofire

class API{
    
    static func getSpeaker(){
        let URL = API_CONSTANTS.getSpeakerURL()
        Alamofire.request(.GET, URL).responseJSON {
            response in
                print(response.request)  // original URL request
                print(response.response) // URL response
                print(response.data)     // server data
                print(response.result)   // result of response serialization
    
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
        }
    }
}