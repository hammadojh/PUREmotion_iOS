//
//  FirstFormPersonal.swift
//  PUREmotionTest
//
//  Created by Omar on 23/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI

struct FirstFormHome: View {
    
    var body: some View {
        FirstFormViewTemplate(screenData: firstFormData![1],destination: FirstFormVentilation())
    }
}

struct FirstFormHome_Previews: PreviewProvider {
    static var previews: some View {
        FirstFormHome()
    }
}
