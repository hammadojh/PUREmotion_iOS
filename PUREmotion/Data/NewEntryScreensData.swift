//
//  ScreensData.swift
//  PUREmotionTest
//
//  Created by Omar on 19/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI

class NewEntryScreenData {
    
    var title:String
    var description:String
    var subtitle:String?
    var nextButtonTitle:String
    
    static let defaulNextButtonTitle = "Continue"
    static let defaulSubtitle = "Choose one or two"
    
    init(title:String,desc:String,sub:String?,next:String?) {
        
        self.title = title
        self.description = desc
        
        if let subtitle = sub {
            self.subtitle = subtitle
        }else{
            self.subtitle = NewEntryScreenData.defaulSubtitle
        }
        
        if let nextButtonTitle = next {
            self.nextButtonTitle = nextButtonTitle
        }else{
            self.nextButtonTitle = NewEntryScreenData.defaulNextButtonTitle
        }
        
        
    }
}

class NewEntryScreenCollectionData : NewEntryScreenData {
    
    var numRows:Int
    var numCols:Int
    var dataArray:[(String,String)]
    
    init(title:String,desc:String,sub:String?,next:String?,r:Int,c:Int,dataArray:[(String,String)]) {
        
        self.numCols = c
        self.numRows = r
        self.dataArray = dataArray
        
        super.init(title: title, desc: desc, sub: sub, next: next)
        
    }
    
}


/* Make the things */


let newEntryScreensData : [String:NewEntryScreenData] = [
    
    // Emotions

    "emotions": NewEntryScreenCollectionData(title: "Feelings", desc: "How are you feeling right now?", sub: nil, next: nil, r: 4, c: 3, dataArray: newEntryEmotionData),
    
    // Activities
    
    "activities": NewEntryScreenCollectionData(title: "Activities", desc: "What are you doing right now?", sub: nil, next: nil, r: 4, c: 3, dataArray: newEntryActivitiesData),
    
    // Locations
    
    "locations": NewEntryScreenCollectionData(title: "Places", desc: "Where are you right now?", sub: "", next: nil, r: 4, c: 3, dataArray: newEntryLocationsData),
    
    // Environment
    
    "environment": NewEntryScreenData(title: "Environment", desc: "Answer the following environmental questions", sub: "", next: nil),
    
    // Health
    
    "health": NewEntryScreenData(title: "Health", desc: "Answer the following health questions", sub: "", next: nil),
    
    
]



/* New Entry Screens inner Data */


let newEntryEmotionData : [(String,String)] = [
    
    ("Surprised","surprised_icn"),
    ("Happy","happy_icn"),
    ("Sad","sad_icn"),
    ("Loved","loved_icn"),
    ("Disgusted","disgusted_icn"),
    ("Excited","excited_icn"),
    ("Relaxed","relaxed_icn"),
    ("Angry","angry_icn"),
    ("Fearful","fearful_icn"),
    ("Confused","confused_icn"),
    ("Stressed","stressed_icn"),
    ("Bored","bored_icn"),
    
]

let newEntryActivitiesData : [(String,String)] = [
    
    ("Working","working_icn"),
    ("Eating","eating_icn"),
    ("Studying","studying_icn"),
    ("Exercising","exercise_icn"),
    ("Cooking","cooking_icn"),
    ("Shopping","shopping_icn"),
    ("Socializing","socializing_icn"),
    ("Watching TV/Movies","movies_icn"),
    ("Using Social Medial","social_media_icn"),
    ("Musical Activity","musical_icn"),
    ("Reading","reading_icn"),
    ("In-Between","in_between_icn"),
    
]

let newEntryLocationsData : [(String,String)] = [
    
    ("Work","work_icn"),
    ("Home","home_icn"),
    ("School","school_icn"),
    ("Grocery","grocery_icn"),
    ("Retail","retail_icn"),
    ("Restaurant","restaurant_icn"),
    ("Coffee Shop","coffee_shop_icn"),
    ("Gym","gym_icn"),
    ("Outdoor","outdoor_icn"),
    ("Party/Club","part_icn"),
    ("Religious","religous_place_icn"),
    ("Other","other_icn"),
    
]
