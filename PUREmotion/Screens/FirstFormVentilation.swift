//
//  FirstFormPersonal.swift
//  PUREmotionTest
//
//  Created by Omar on 23/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI

struct FirstFormVentilation: View {
    
    var body: some View {
        FirstFormViewTemplate(screenData: firstFormData![2],destination: FirstFormWellbeing())
    }
}

struct FirstFormVentilation_Previews: PreviewProvider {
    static var previews: some View {
        FirstFormVentilation()
    }
}
