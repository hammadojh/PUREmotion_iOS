//
//  FirstFormPersonal.swift
//  PUREmotionTest
//
//  Created by Omar on 23/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI

struct FirstFormWellbeing: View {
    
    var body: some View {
        FirstFormViewTemplate(screenData: firstFormData![3],destination: FirstFormThanks())
    }
}

struct FirstFormWellbeing_Previews: PreviewProvider {
    static var previews: some View {
        FirstFormWellbeing()
    }
}
