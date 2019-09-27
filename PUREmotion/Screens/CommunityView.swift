//
//  CommunityView.swift
//  PUREmotionTest
//
//  Created by Omar on 23/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI

struct CommunityView: View {
    var body: some View {
        VStack{
            
            Spacer()
            
            HStack{
                EmojieStat(emojieName: "happy_icn", text: "37%  Happy", emojieSize: .large, textSize: .title,percentage:"").layoutPriority(1)
            }.padding(.bottom,24)
            
            Spacer()
            
            HStack{
                EmojieStat(emojieName: "happy_icn", text: "Happy", emojieSize: .med, textSize: .headline,percentage: "37%")
                Spacer()
                EmojieStat(emojieName: "happy_icn", text: "Happy", emojieSize: .med, textSize: .headline,percentage: "37%")
                Spacer()
                EmojieStat(emojieName: "happy_icn", text: "Happy", emojieSize: .med, textSize: .headline,percentage: "37%")

            }.padding([.horizontal],24)
            
            Spacer()
            
            HStack{
                EmojieStat(emojieName: "happy_icn", text: "Happy", emojieSize: .small, textSize: .headline,percentage: "37%")
                Spacer()
                EmojieStat(emojieName: "happy_icn", text: "Happy", emojieSize: .small, textSize: .headline,percentage: "37%")
                Spacer()
                EmojieStat(emojieName: "happy_icn", text: "Happy", emojieSize: .small, textSize: .headline,percentage: "37%")
                Spacer()
                EmojieStat(emojieName: "happy_icn", text: "Happy", emojieSize: .small, textSize: .headline,percentage: "37%")

            }.padding([.horizontal],24)
            
            Spacer()
            
            HStack{
                EmojieStat(emojieName: "happy_icn", text: "Happy", emojieSize: .small, textSize: .headline,percentage: "37%")
                Spacer()
                EmojieStat(emojieName: "happy_icn", text: "Happy", emojieSize: .small, textSize: .headline,percentage: "37%")
                Spacer()
                EmojieStat(emojieName: "happy_icn", text: "Happy", emojieSize: .small, textSize: .headline,percentage: "37%")
                Spacer()
                EmojieStat(emojieName: "happy_icn", text: "Happy", emojieSize: .small, textSize: .headline,percentage: "37%")

            }.padding([.horizontal],24)
            
            Spacer()
            
            .navigationBarTitle("Community")
            
        }
    }
}



struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
    }
}

struct EmojieStat: View {
    
    var emojieName:String
    var text:String
    var emojieSize:Sizes
    var textSize:Font
    var percentage:String
    
    
    enum Sizes:CGFloat {
        case large = 200
        case med = 72
        case small = 32
    }
    
    var body: some View {
        VStack {
            Image(emojieName).resizable().aspectRatio(contentMode: .fit).frame(width:emojieSize.rawValue,height:emojieSize.rawValue).layoutPriority(1)
            Text(text).font(textSize)
            Text(percentage)
        }
    }
}
