//
//  EntriesList.swift
//  PUREmotionTest
//
//  Created by Omar on 18/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI
import UIKit

struct EntriesList: View {
    
    @EnvironmentObject var data:UserData
    @EnvironmentObject var controlls:Controlls
    
    var body: some View {
        
        ZStack(alignment:.bottomTrailing) {
            
            // List & Bottom bar
            
            VStack {
                
                List(data.entries){item in
                    EntryRow(entry: item)
                    }
                .padding(.top)
                .edgesIgnoringSafeArea(.horizontal)
                .listStyle(PlainListStyle())
                
                
                HStack(alignment: .center){
                    HStack{
                        Text("Total Rewards")
                        Text("0.8 USD")
                    }.font(.headline)
                    Spacer()
                    FloatingButton()
                    
                }
                .frame(height:100).foregroundColor(.white).padding(.horizontal).background(Color(.orange)).font(.headline)
                
            }
            
            
            
        }
            
        .navigationBarTitle("Puremotion")
        .sheet(isPresented: self.$controlls.newEntryModalShowing) {
            NewEntryEmotions().environmentObject(self.controlls)
        }
        
    }
}

struct EntriesList_Previews: PreviewProvider {
    static var previews: some View {
        EntriesList().environmentObject(UserData()).environmentObject(Controlls())
    }
}

struct FloatingButton: View {
    
    @EnvironmentObject var controlls:Controlls
    
    var body: some View {
        Button(action: {
            self.controlls.newEntryModalShowing.toggle()
        }) {
            ZStack {
                
                CircleWithStroke(bgColor:.white, strokeColor: .orange, w: 64, h: 64)
                Image(systemName:"plus").foregroundColor(.orange)
            }
        }
    }
}

struct CircleWithStroke:View{
    
    var bgColor:Color
    var strokeColor:Color
    var w:CGFloat
    var h:CGFloat
    
    
    var body:some View {
        Group{
            Circle().stroke(lineWidth: 2).foregroundColor(strokeColor)
            Circle().foregroundColor(bgColor)
        }.frame(width:w,height:h)
    }
}
