//
//  Auth.swift
//  PUREmotionTest
//
//  Created by Omar on 23/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI

struct Auth: View {
    
    @State var mobile:String
    let padding:CGFloat = 8
    
    var body: some View {
        VStack {
            Spacer()
            Image("puremotion_logo_full").resizable().aspectRatio(contentMode: .fit).padding(.horizontal,72).padding(.bottom,32)
            Spacer()
            VStack{
                MyTextField(title:"Mobile Number", value: $mobile)
                MyTextField(title:"Password",value: $mobile)
                Text("By Creating an account you agree to the terms and conditions of the app").foregroundColor(.secondary)
                Button(action:{
                    // do something
                },label:{
                    
                    HStack{
                        Spacer()
                        Text("LOGIN").bold()
                        Spacer()
                        }.padding().background(Color(.orange)).foregroundColor(.white).cornerRadius(8)
                }).padding(.top,8)
                
                Text("Click here if you forget your password?").bold().padding(.top).foregroundColor(.orange)
                
            }
            .padding(.horizontal).lineLimit(nil).layoutPriority(1)
        }
    }
}

struct Auth_Previews: PreviewProvider {
    static var previews: some View {
        Auth(mobile: "")
    }
}

struct MyTextField: View {
    
    var title:String
    @Binding var value:String
    
    var body: some View {
        VStack(alignment:.leading){
            TextField(title, text: $value)
            Rectangle().frame(height:1).foregroundColor(.gray)
        }.padding().background(lightGray).cornerRadius(8).padding(.bottom,8)
    }
}
