//
//  EnableLocation.swift
//  PUREmotionTest
//
//  Created by Omar on 23/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI

struct EnableLocation: View {
    var body: some View {
        VStack(alignment:.center) {
           Spacer()
            Image(systemName:"location.circle.fill").resizable().frame(width:100,height:100).foregroundColor(.orange).rotationEffect(.init(degrees: 45)).aspectRatio(contentMode: .fit)
            Text("Please Enable Location").font(.title).bold().padding()
            Text("In oder to use the app you shoule enable the location and allow the app to use it").multilineTextAlignment(.center)
            Spacer()
        }
    .padding()
    }
}

struct EnableLocation_Previews: PreviewProvider {
    static var previews: some View {
        EnableLocation()
    }
}
