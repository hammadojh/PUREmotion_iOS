//
//  Data.swift
//  PUREmotionTest
//
//  Created by Omar on 18/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI
import Combine

final class UserData : ObservableObject {
    
    @Published var entries = allEntries
}

final class Controlls : ObservableObject {
    
    @Published var newEntryModalShowing = false
    
}


