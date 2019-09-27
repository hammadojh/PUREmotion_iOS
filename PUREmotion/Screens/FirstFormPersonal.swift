//
//  FirstFormPersonal.swift
//  PUREmotionTest
//
//  Created by Omar on 23/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI

struct FirstFormPersonal: View {
        
    var body: some View {
        FirstFormViewTemplate(screenData: firstFormData![0],destination: FirstFormHome())
    }
}

struct FirstFormPersonal_Previews: PreviewProvider {
    static var previews: some View {
        FirstFormPersonal()
    }
}
