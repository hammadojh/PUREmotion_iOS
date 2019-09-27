//
//  Settings.swift
//  PUREmotionTest
//
//  Created by Omar on 23/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        Form{
            HStack{
                VStack(alignment:.leading){
                    Toggle(isOn: .constant(true)) {
                        VStack{
                            Text("Enable Notification").font(.system(size: 18)).bold()
                            Text("Turn notifications on/off").font(.subheadline).foregroundColor(.secondary)
                        }
                    }
                    
                    
                }
            }
            
            NavigationLink(destination:NotificationTime()) {
                HStack{
                    VStack(alignment:.leading){
                        Text("Morning Notification time").font(.system(size: 18)).bold()
                        Text("9:00 AM").font(.subheadline).foregroundColor(.secondary)
                    }
                }
            }
            
            NavigationLink(destination:NotificationTime()) {
                HStack{
                    VStack(alignment:.leading){
                        Text("Evening Notification time").font(.system(size: 18)).bold()
                        Text("6:00 PM").font(.subheadline).foregroundColor(.secondary)
                    }
                }
            }
        }
        .navigationBarTitle("Settings")
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
