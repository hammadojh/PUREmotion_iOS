//
//  NewEntry.swift
//  PUREmotionTest
//
//  Created by Omar on 19/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI

struct NewEntryTopCollectionView: View {
    
    var screenData:NewEntryScreenData
    @Binding var numSelected:Int
        
    var body: some View {
        // content
        VStack(alignment:.leading) {
            NewEntryTopView(screenData: self.screenData)
            CollectionView(numSelected: self.$numSelected, screenData: self.screenData as! NewEntryScreenCollectionData).layoutPriority(2)
            Spacer()
        }
        .padding(24)
    }
}

struct NewEntryTopView : View {
    
    var screenData:NewEntryScreenData
    
    var body : some View {
        
        VStack(alignment:.leading) {
            Text(screenData.description).font(.title).bold().layoutPriority(1).padding([.top],24).frame(height:110)
            
            if screenData.subtitle != "" {
                Text(screenData.subtitle!).font(.subheadline)
            }
                
        } .navigationBarTitle(Text(screenData.title),displayMode: .inline)
    }
}


struct CollectionView:View {
    

    @Binding var numSelected : Int
    var screenData:NewEntryScreenCollectionData
    
    var body: some View {
        
        VStack {
            ForEach(0..<self.screenData.numRows){ r in
                CollectionRow(r: r, numCols: self.screenData.numCols, screenData:self.screenData,numSelected: self.$numSelected)
            }
        }
    }
    
}

struct CollectionRow: View {
    
    var r : Int // row index
    var numCols : Int // num of columns
    
    var screenData:NewEntryScreenCollectionData
    @Binding var numSelected : Int
        
    var body: some View {
        HStack {
            ForEach(self.numCols * r..<(self.numCols * r + self.numCols)) { c in
                EmotionBox(imageName: self.screenData.dataArray[c].1, description: self.screenData.dataArray[c].0, numSelected: self.$numSelected,selected: false)
            }
        }
    }
}

struct EmotionBox: View {
    
    var imageName:String
    var description:String
    
    @Binding var numSelected : Int
    @State var selected:Bool
    
    var body: some View {
        
        VStack{
            Image(imageName).resizable().aspectRatio(contentMode: .fit).frame(width:92,height:92)
            Text(description).font(.headline).lineLimit(1).foregroundColor(self.selected ? .white : .black)
        }
        .padding(16)
        .background(selected ? .orange : Color(red: 0.9, green: 0.9, blue: 0.9))
        .cornerRadius(8)
        .onTapGesture {
            self.selected.toggle()
            
            if self.selected {
                self.numSelected += 1
            }else {
                self.numSelected -= 1
            }
            
        }
        
    }
}

struct PURENavigationLink<Destination:View>: View {
    
    var buttonTitle:String
    var destination:Destination
    
    var body: some View {
        NavigationLink(destination: self.destination) {
            
            HStack(alignment: .center){
                Spacer()
                Text(buttonTitle).aspectRatio(contentMode: .fit).foregroundColor(.white).padding(.all)
                Spacer()
            }
            .background(Color(.orange)).cornerRadius(10).padding().shadow(radius: 10)
            
        }
    }
}

/// MODIFIERS 

struct NewEntryInput:ViewModifier{
        
    func body(content:Content) -> some View {
    content
    .padding(.all)
        .background(lightGray)
        .cornerRadius(8)
        .padding([.horizontal],16)
    }
    
}


/// PREVIEW

struct NewEntryTopView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            NewEntryEmotions()
            NewEntryActivities()
            NewEntryLocations()
            NewEntryHealth()
            NewEntryEnvironment()
            NewEntryTopView(screenData: newEntryScreensData["environment"]!)
        }
    }
}





