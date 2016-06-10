//
//  constants.swift
//  Big Data LA
//
//  Created by Manish Dwibedy on 6/10/16.
//  Copyright © 2016 Manish Dwibedy. All rights reserved.
//

import Foundation

class SpeakerData {
    
    static let speakers = ["ANDY FENG", "GIL ELBAZ", "GWEN SHAPIRA",  "JAYADEV GOPINATH", "JEANNE HOLM", "PAUL ELLWOOD", "RAJIV MAHESWARAN", "REYNOLD XIN", "TOM HORAN"]
    
    static let speaker_names = ["ANDY FENG", "GIL ELBAZ", "GWEN SHAPIRA",  "JAYADEV GOPINATH", "JEANNE HOLM", "PAUL ELLWOOD", "RAJIV MAHESWARAN", "REYNOLD XIN", "TOM HORAN"]
    static let speaker_titles = []
    static let speaker_about = []
    
    
    static func getSpeakerInfo() -> [[String: String]] {
        
        var speakers = [[String: String]]()
        
        let andy: [String: String] = ["name": "ANDY FENG", "title": "VP - Architecture, Yahoo", "about": "Andy Feng is a VP Architecture at Yahoo, leading the architecture and design of big data and machine learning initiatives. He’s architected major platforms for personalization, ads serving, NoSQL, and cloud infrastructure."]

        let gil: [String: String] = ["name": "GIL ELBAZ", "title": "Founder & CEO, Factual", "about": "Gil Elbaz is the Founder and CEO of Factual, a data company that enables developers, publishers and advertisers to build highly relevant mobile experiences using the context of location. Prior to Factual, Gil co-founded Applied Semantics Inc. (ASI), which developed contextual advertising products, including ASI's AdSense. Google acquired ASI in 2003, where Gil stayed on as the director of engineering, continuing to work on AdSense and other products. In 2008, Gil founded The Common Crawl Foundation, a non-profit with the goal of democratizing access to web information to enable greater innovation in research, business and education. He continues to serve on the board there as well as on the board of the X Prize Foundation. Gil is an active angel investor. He recently co-founded TenOneTen ventures with David Waxman, and his notable investments include Climate Corporation (acquired by Monsanto for $1.2 billion), GoodReads (acquired by Amazon), Scopely, and Kaggle. Gil earned a B.S. with a double major in Engineering & Applied Science and Economics from the California Institute of Technology."]
        
        speakers.append(andy)
        speakers.append(gil)
        
        return speakers
    }
    
}

