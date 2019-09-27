//
//  FirstFormThanks.swift
//  PUREmotionTest
//
//  Created by Omar on 24/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI

struct FirstFormThanks: View {
    var body: some View {
        
        ZStack {
            Rectangle().foregroundColor(.orange).edgesIgnoringSafeArea(.all)
            VStack {
                Text("🙏").font(.system(size: 100))
                Text("Thanks").font(.largeTitle).bold().colorInvert()
            }
        }
        
        
    }
}

struct FirstFormThanks_Previews: PreviewProvider {
    static var previews: some View {
        FirstFormThanks()
    }
}
