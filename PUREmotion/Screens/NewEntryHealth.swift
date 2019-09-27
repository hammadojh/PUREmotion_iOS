//
//  NewEntryHealth.swift
//  PUREmotionTest
//
//  Created by Omar on 22/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI

struct NewEntryHealth: View {
    
    @State var screenData = newEntryScreensData["health"]!
    @State var isCoughing : Bool = false
    @State var isRespi : Bool = false
    @State var asmQ1 : Bool = false
    @State var asmQ2 : Bool = false
    
    @State var hasAsthma : Bool = false

    var body: some View {
        
        VStack(){
            
            NewEntryTopView(screenData: screenData).layoutPriority(1).frame(height:100).padding()
            NewEntryHealthInput(text:"Is Coughing bothering you recently?",isToggled: $isCoughing)
            NewEntryHealthInput(text:"Have your activities been limited due to respiratory issues?",isToggled: $isRespi)
            
            if hasAsthma {
                
                NewEntryHealthInput(text:"Asthma Q1",isToggled: $asmQ1)
                NewEntryHealthInput(text:"Asthma Q2",isToggled: $asmQ2)
                
            }
            
            PURENavigationLink(buttonTitle: screenData.nextButtonTitle, destination: NewEntryReward())
            
            
            Spacer()
        }
    }
}

struct NewEntryHealth_Previews: PreviewProvider {
    static var previews: some View {
        NewEntryHealth()
    }
}

struct NewEntryHealthInput: View {
    
    var text : String
    @Binding var isToggled : Bool
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(text).font(.headline)
                Spacer()
            }
            HStack{
                Toggle(isOn: $isToggled) {
                    Text("Something")
                }.frame(width:50).padding(.trailing)
                Text(isToggled ? "Yes" : "No")
            }
        }.modifier(NewEntryInput())
    }
}
