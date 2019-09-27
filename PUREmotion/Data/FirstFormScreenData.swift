//
//  FirstFormScreenData.swift
//  PUREmotionTest
//
//  Created by Omar on 23/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI


struct FormPage : Decodable {
    
    let id:String
    let title:String
    let headline:String
    let questions:[FormQuestion]
    
    public struct FormQuestion : Decodable {
        
        let question:String
        let type:String
        let placeholder:String
        let selections:[String]
        
    }
    
}

// read from json

let firstFormData = decodeJson(url: "first_form_questions")



