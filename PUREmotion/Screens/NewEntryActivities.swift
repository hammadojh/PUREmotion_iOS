//
//  NewEntryActivities.swift
//  PUREmotionTest
//
//  Created by Omar on 19/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI

struct NewEntryActivities: View {
    
    var screenData = newEntryScreensData["activities"] as! NewEntryScreenCollectionData
    @State var numSelected:Int = 0
        
    var body: some View {
        ZStack(alignment:.bottom){
            
            // template
            
            NewEntryTopCollectionView(screenData: self.screenData,numSelected: self.$numSelected)
            
            // floating button

            if numSelected > 0 {
                
                PURENavigationLink(buttonTitle: screenData.nextButtonTitle, destination: NewEntryLocations())
            }
        }
    }
}

struct NewEntryActivities_Previews: PreviewProvider {
    static var previews: some View {
        NewEntryActivities()
    }
}
