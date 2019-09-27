//
//  NewEntryEnvironment.swift
//  PUREmotionTest
//
//  Created by Omar on 19/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI

struct NewEntryEnvironment: View {
    
    @State var screenData = newEntryScreensData["environment"]!
    
    var body: some View {
        VStack {
            NewEntryTopView(screenData: newEntryScreensData["environment"]!)
            ScalePicker(text: "How acceptable is the air quality near you?", lowTag: "unacceptable", highTag: "unacceptable")
            ScalePicker(text: "How acceptable is the noise near you?", lowTag: "unacceptable", highTag: "unacceptable")
            ScalePicker(text: "How acceptable was your transportation today?", lowTag: "acceptable", highTag: "unacceptable")
            ScalePicker(text: "How active were you in the past 6 hours?", lowTag: "acceptable", highTag: "unacceptable")
            Spacer()
            PURENavigationLink(buttonTitle: screenData.nextButtonTitle, destination: NewEntryHealth())
            
        }
        
    }
}

struct NewEntryEnvironment_Previews: PreviewProvider {
    static var previews: some View {
        NewEntryEnvironment()
    }
}

struct ScalePicker: View {
    
    @State private var selectorIndex = 0
    @State private var numbers = ["1","2","3","4","5"]
    
    var text:String
    var lowTag:String
    var highTag:String
    
    var body: some View {
        
        VStack{
            Text(text).font(.headline).layoutPriority(1)
            Picker("Scale", selection: $selectorIndex) {
                ForEach(0 ..< numbers.count) { index in
                    Text(self.numbers[index]).tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal)
            HStack{
                Text(lowTag)
                Spacer()
                Text(highTag)
            }.padding(.horizontal)
            }.modifier(NewEntryInput())       .padding([.bottom],4)
        
    }
}
