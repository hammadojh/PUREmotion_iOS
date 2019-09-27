//
//  togle.swift
//  PUREmotionTest
//
//  Created by Omar on 23/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI

struct togle: View {
    var body: some View {
        Toggle(isOn: .constant(true)) {
            Text("On?")
        }
    }
}

struct togle_Previews: PreviewProvider {
    static var previews: some View {
        togle()
    }
}
