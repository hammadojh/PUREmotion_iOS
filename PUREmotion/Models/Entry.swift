//
//  Entry.swift
//  PUREmotionTest
//
//  Created by Omar on 18/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI

class Entry : Identifiable {
    
    var id:String!
    
    init(){
        self.id = UUID().uuidString
    }
    
}
