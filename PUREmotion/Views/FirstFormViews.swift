//
//  FirstFormViews.swift
//  PUREmotionTest
//
//  Created by Omar on 24/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI

struct FirstFormViewTemplate<Destination:View>: View {
    
    var screenData:FormPage?
    var destination:Destination
    
    
    var body: some View {
        
        NavigationView{
            ZStack(alignment:.bottom) {
                VStack(alignment:.leading) {
                    FormQuestionsView(screenData: screenData)
                }
                .navigationBarTitle(self.screenData!.title)
                
                Group{
                    if true {
                        PURENavigationLink(buttonTitle: "Continue", destination: self.destination)
                    }
                }
            }
        }
    }
}

struct FormQuestionsView : View {
    
    var screenData : FormPage?
    
    var body : some View {
        
        Form{
            SubTitle(text:self.screenData!.headline)
            ForEach(0 ..< self.screenData!.questions.count, id: \.self){ i in
                Group{
                    if self.screenData?.questions[i].type == "text" || self.screenData?.questions[i].type == "number" {
                        TextSection(header: (self.screenData?.questions[i].question)!, placeholder: (self.screenData?.questions[i].placeholder)!, value: .constant(""))
                    } else if self.screenData?.questions[i].type == "toggle" {
                        ToggleSection(header: (self.screenData?.questions[i].question)!, title: (self.screenData?.questions[i].placeholder)!, selected: .constant(false))
                    } else if self.screenData?.questions[i].type == "picker" {
                        PickerSection(header: (self.screenData?.questions[i].question)!, title: (self.screenData?.questions[i].placeholder)!, arr: (self.screenData?.questions[i].selections)!, selection: .constant(0))
                    }
                }
            }
        }.padding(.bottom,64)
        
    }
}

struct SubTitle : View {
    
    var text : String
    var body : some View {
        ZStack{
            FormEmptyRectangle()
            Text(text).layoutPriority(1).foregroundColor(.gray)
            
        }
    }
    
}

struct ToggleSection : View {
    
    var header : String
    var title : String
    @Binding var selected : Bool
    
    var body : some View {
        
        Section(header:SectionHeader(text:header)){
            Toggle(isOn: $selected) {
                Text(title)
            }
        }
        
    }
    
}

struct PickerSection : View {
    
    var header : String
    var title : String
    var arr : [String]
    @Binding var selection : Int
    
    var body : some View {
        
        Section(header:SectionHeader(text:header)){
            Picker(selection: $selection, label: Text(title)) {
                ForEach(0 ..< arr.count){
                    Text(self.arr[$0])
                }
            }
        }
        
    }
    
    
}

struct TextSection : View {
    
    var header : String
    var placeholder: String
    @Binding var value : String
    
    var body : some View {
        Section(header:SectionHeader(text:header).padding(.top)){
            TextField(placeholder, text: $value)
        }
        
    }
}

struct SectionHeader : View {
    
    var text:String
    var body : some View {
        Text(text).bold().font(.body).foregroundColor(.black)
    }
    
}

struct FirstFormViews_Previews: PreviewProvider {
    static var previews: some View {
        FirstFormViewTemplate(screenData: firstFormData![0],destination: FirstFormHome())
    }
}

struct FormEmptyRectangle: View {
    var body: some View { Rectangle().frame(width:1000,height:70).foregroundColor(systemBGGray)
    }
}
