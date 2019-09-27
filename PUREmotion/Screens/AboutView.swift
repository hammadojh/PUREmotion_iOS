//
//  AboutView.swift
//  PUREmotionTest
//
//  Created by Omar on 23/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack{
            Text("The C70 project is something cool and we want to study the effects of this project and how it affects the well-being of people").padding()
            HStack{
                Button(action: {
                    //Do something
                }) {
                    HStack {
                        Text("Visit Our Website").bold()
                        Image(systemName:"link")
                        }.padding().background(Color(.orange)).foregroundColor(.white).cornerRadius(8)
                }
                Spacer()
            }.padding(.leading)
            Spacer()
        }
        .navigationBarTitle("About US")
        
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
