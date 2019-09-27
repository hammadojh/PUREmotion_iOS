//
//  ContentView.swift
//  PUREmotionTest
//
//  Created by Omar on 18/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI

struct EntryRow: View {
    
    var entry : Entry
    
    var body: some View {
        
        VStack(alignment:.leading) {
            Text("Sep 18, 2018").font(.headline)
            HStack{
                VStack{
                    Image("time_morning_icn")
                    Text("11:00pm")
                }
                VerticalLine()
                VStack(alignment:.center){
                    Text("Playing & Working at Some place").multilineTextAlignment(.center).lineLimit(2).frame(height:64)
                    HStack{
                        EmotionView(emotionEmoji: "happy_icn", emotionName: "Happy")
                        EmotionView(emotionEmoji: "happy_icn", emotionName: "Happy")
                    }
                }
                VerticalLine()
                VStack{
                    EnvView(envImg: "air_icn", envLevel: "bar_20")
                    EnvView(envImg: "sound_icn", envLevel: "bar_40")
                    EnvView(envImg: "traffic_icn", envLevel: "bar_20")
                    EnvView(envImg: "active_icn", envLevel: "bar_20")
                }
            }
        }
        .padding(.all)
        .background(lightGray)
        .cornerRadius(8)
        

    }
}

struct EntryRow_Previews: PreviewProvider {
    static var previews: some View {
        EntryRow(entry: UserData().entries[0])
    }
}

struct EmotionView: View {
    
    var emotionEmoji:String
    var emotionName:String
    
    var body: some View {
        VStack{
            Image(emotionEmoji).resizable().aspectRatio(contentMode: .fit).frame(height:64)
            Text(emotionName)
        }
    }
}

struct EnvView: View {
    
    var envImg:String
    var envLevel:String
    
    var body: some View {
        HStack{
            Image(envImg).resizable().aspectRatio(contentMode: .fit).frame(width:32,height:32).padding(4)
            Image(envLevel)
        }
    }
}

struct VerticalLine: View {
    var body: some View {
        Rectangle().frame(width:1,height:100).foregroundColor(.gray).opacity(0.2)
    }
}
