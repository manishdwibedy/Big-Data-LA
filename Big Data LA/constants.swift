//
//  constants.swift
//  Big Data LA
//
//  Created by Manish Dwibedy on 6/10/16.
//  Copyright © 2016 Manish Dwibedy. All rights reserved.
//

import Foundation

class SpeakerData {
    
    static func getSpeakerInfo() -> [[String: String]] {
        
        var speakers = [[String: String]]()
        
        let andy: [String: String] = ["name": "ANDY FENG", "title": "VP - Architecture, Yahoo", "about": "Andy Feng is a VP Architecture at Yahoo, leading the architecture and design of big data and machine learning initiatives. He’s architected major platforms for personalization, ads serving, NoSQL, and cloud infrastructure."]
        speakers.append(andy)

        let gil: [String: String] = ["name": "GIL ELBAZ", "title": "Founder & CEO, Factual", "about": "Gil Elbaz is the Founder and CEO of Factual, a data company that enables developers, publishers and advertisers to build highly relevant mobile experiences using the context of location. Prior to Factual, Gil co-founded Applied Semantics Inc. (ASI), which developed contextual advertising products, including ASI's AdSense. Google acquired ASI in 2003, where Gil stayed on as the director of engineering, continuing to work on AdSense and other products. In 2008, Gil founded The Common Crawl Foundation, a non-profit with the goal of democratizing access to web information to enable greater innovation in research, business and education. He continues to serve on the board there as well as on the board of the X Prize Foundation. Gil is an active angel investor. He recently co-founded TenOneTen ventures with David Waxman, and his notable investments include Climate Corporation (acquired by Monsanto for $1.2 billion), GoodReads (acquired by Amazon), Scopely, and Kaggle. Gil earned a B.S. with a double major in Engineering & Applied Science and Economics from the California Institute of Technology."]
        speakers.append(gil)
        
        let gwen: [String: String] = ["name": "GWEN SHAPIRA", "title": "System Architect, Confluent", "about": "Gwen is a system architect at Confluent helping customers achieve success with their Apache Kafka implementation. She has 15 years of experience working with code and customers to build scalable data architectures, integrating relational and big data technologies. She currently specializes in building real-time reliable data processing pipelines using Apache Kafka. Gwen is an Oracle Ace Director, an author of \"Hadoop Application Architectures\", and a frequent presenter at industry conferences. Gwen is also a committer on the Apache Kafka and Apache Sqoop projects. When Gwen isn't coding or building data pipelines, you can find her pedaling on her bike exploring the roads and trails of California, and beyond."]
        speakers.append(gwen)
        
        let jayadev: [String: String] = ["name": "JAYADEV GOPINATH", "title": "Chief Data Officer, Toyota Motor North America", "about": "Jayadev Gopinath is the Chief Data Officer for Toyota Motor North America. In this role, he is responsible for leveraging enterprise data and business intelligence assets towards business value. Previously, Jayadev was the Chief Architect for Toyota Motor Sales. In this role, he was responsible for all technology / system architecture, vision, strategy, roadmaps and standards that are aligned to business needs."]
        speakers.append(jayadev)
        
        let jeanne: [String: String] = ["name": "JEANNE HOLM", "title": "Deputy CIO and Assistant General Manager, City of Los Angeles", "about": "As a leader in open data, education, community-building, and civic innovation, Jeanne Holm empowers people to discover new knowledge and collaborate to improve life on Earth and beyond. From astronauts in orbit to rural villagers in Uganda, billions of people use her systems to find the data, information, and knowledge they need to make better decisions every day. Jeanne is the Deputy CIO and Assistant General Manager for the City of Los Angeles, where her team empowers Angelenos and City officials with technology to connect, collaborate, and inform. She is also the CIO and Director for Education for World Peace One, a charity that promotes peace and social justice through education and music. As a senior consultant with the World Bank, she empowers governments and civil society to use open data to increase prosperity and civic good. As the former Evangelist for Data.Gov (for the White House), Jeanne led collaboration and built communities with the public, educators, developers, and governments in using open government data. She also served as the Chief Knowledge Architect at NASA’s Jet Propulsion Laboratory at the California Institute of Technology. She is a Distinguished Instructor at UCLA, teaching courses in knowledge management, big data, and civic innovation. She is a Fellow of the United Nations International Academy of Astronautics, co-Chair of the Africa Open Data community, and has more than 130 publications on innovation, open data, information systems, and knowledge management."]
        speakers.append(jeanne)
        
        let paul: [String: String] = ["name": "PAUL ELLWOOD", "title": "VP - Data Engineering & Analytics, Netflix", "about": "Paul Ellwood currently leads Netflix’s Data Engineering & Analytics group. Previously, he led Netflix’s Product Analytics group and prior to that, Marketing Analytics at Rosetta, an advertising agency. Born and raised in Ohio, Paul secured his Bachelors in Systems & Control Engineering from Case Western Reserve University and his Masters in Predictive Analytics from Northwestern University. He currently lives in San Francisco with his partner, Tj, and their beagle, Torque."]
        speakers.append(paul)
        
        let rajiv: [String: String] = ["name": "RAJIV MAHESWARAN", "title": "CEO & Co-Founder, Second Spectrum", "about": "Rajiv Maheswaran is CEO and Co-Founder of Second Spectrum, an innovative sports analytics and data visualization startup. Prior to Second Spectrum, Rajiv served as a Research Assistant Professor within the University of Southern California’s Department of Computer Science and a Project Leader at the Information Sciences Institute at the USC Viterbi School of Engineering. He and Second Spectrum COO/Co-Founder Yu-Han Chang co-directed the Computational Behavior Group at USC.Rajiv has received numerous awards and written over 100 publications in artificial intelligence and control theory. In 2014, Rajiv won the USC Viterbi School of Engineering Use-Inspired Research Award. Also in 2014, he won Best Research Paper (Alpha Award) at the renowned MIT Sloan Sports Analytics Conference. He also won the Best Research Paper (Alpha Award) at the MIT Sloan Sports Analytics Conference In 2012. Rajiv received a B.S. degree in Applied Mathematics, Engineering and Physics from the University of Wisconsin-Madison. He also received M.S. and Ph.D. degrees in Electrical and Computer Engineering from the University of Illinois at Urbana-Champaign. His work spans the fields of data analytics, data visualization, real-time interaction, spatiotemporal pattern recognition, artificial intelligence, decision theory and game theory."]
        speakers.append(rajiv)
        
        
        let reynold: [String: String] = ["name": "REYNOLD XIN", "title": "Co-Founder, Databricks", "about": "Reynold Xin is an Apache Spark PMC member and Chief Architect for Spark and co-founder at Databricks."]
        speakers.append(reynold)
        
        
        let tom: [String: String] = ["name": "TOM HORAN", "title": "Dean of the Drucker-Ito School of Management & Director of the Center for Information Systems and Technology at Claremont Graduate University (CGU).", "about": "Dr. Thomas A. Horan is Dean of the Drucker-Ito School of Management, and Director of the Center for Information Systems and Technology at Claremont Graduate University (CGU). Dr. Horan has also co-directed the university’s big data and creativity-innovation initiatives. Dr. Horan’s work has been at the intersection of technology and its application. He has approximately 25 years of experience in designing, testing, and assessing major innovations. These innovations have involved cloud-based, geo-spatial, and mobile applications in health, transportation, and education sectors. He has over 130 publications, including in major journals such as Management Information Systems Quarterly, Visual Information Systems, and Communications of the ACM. Dr. Horan’s work has been featured at the US White House and his research has been sponsored by numerous organizations, including the US Department of Transportation, California HealthCare Foundation, Blue Shield Foundation, US Social Security Administration, National Science Foundation, United Nations Development Corporation, Mayo Clinic, Kay Family Foundation, Salesforce.com and Getty Leadership Institute. Dr. Horan has been a Visiting Scholar at Harvard University, Massachusetts Institute of Technology, University of Hawaii, and University of Minnesota. He has also served in numerous advisory positions in the US, Middle East, and Asia. Dr. Horan has his masters and doctoral degrees from Claremont Graduate University."]
        speakers.append(tom)
        
        return speakers
    }
    
}

