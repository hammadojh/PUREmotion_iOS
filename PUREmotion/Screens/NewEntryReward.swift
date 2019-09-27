//
//  NewEntryReward.swift
//  PUREmotionTest
//
//  Created by Omar on 22/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI

struct NewEntryReward: View {
    
    @EnvironmentObject var controls:Controlls

    var body: some View {
        ZStack {
            
            //circle
            Circle().foregroundColor(.orange).padding()
            
            //content
            VStack{
                Text("👍 You earned +$0.08").font(.headline)
                VStack{
                    Text("$0.08").font(.system(size: 100)).fontWeight(.black)
                    Text("Total Rewards").font(.subheadline)
                }
            }.foregroundColor(.white)
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now()+1) {
                self.controls.newEntryModalShowing = false
            }
        }
    }
}

struct NewEntryReward_Previews: PreviewProvider {
    static var previews: some View {
        NewEntryReward()
    }
}

