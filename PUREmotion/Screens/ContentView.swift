//
//  ContentView.swift
//  PUREmotionTest
//
//  Created by Omar on 24/09/2019.
//  Copyright © 2019 Omar. All rights reserved.
//

import SwiftUI

enum MainViews {
    case entries
    case community
    case about
    case settings
    case login
}

struct ContentView: View {
    
    @EnvironmentObject var data:UserData
    @EnvironmentObject var controlls:Controlls
    @State var currentView:MainViews = .entries
    @State var menuShowing : Bool = false
    @State var loggedIn : Bool = true
    
    var body: some View {
        
        // login screens
        
        Group{
            if !self.loggedIn {
                
                Auth(mobile: "").transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .bottom)))
                
            } else {
                
                ZStack{
                    
                    // main content
                    
                    NavigationView{
                        Group{
                            if self.currentView == .entries {
                                EntriesList()
                            } else if self.currentView == .community {
                                CommunityView()
                            } else if self.currentView == .about {
                                AboutView()
                            } else if self.currentView == .settings {
                                Settings()
                            }
                        }
                        .edgesIgnoringSafeArea(.bottom)
                        .navigationBarItems(leading:
                            Button(action:{
                                self.menuShowing.toggle()
                            },label:{ Image(systemName:"line.horizontal.3").font(.largeTitle).foregroundColor(.orange)
                            })
                        )
                    }
                    
                    // side menu
                    
                    Group{
                        
                        Color(.black).opacity(self.menuShowing ? 0.75 : 0).edgesIgnoringSafeArea(.all).animation(.easeInOut)
                            .onTapGesture {
                                self.menuShowing.toggle()
                        }
                        
                        SideMenu(currentView: self.$currentView,menuShowing: self.$menuShowing,loggedIn: self.$loggedIn)
                            .frame(width:UIScreen.main.bounds.width - 50)
                            .offset(x: self.menuShowing ? -50 : -UIScreen.main.bounds.width)
                            .animation(.easeInOut)
                    }
                }
            }
        }
        
    }
}

struct SideMenu: View {
    
    @Binding var currentView:MainViews
    @Binding var menuShowing:Bool
    @Binding var loggedIn:Bool
    
    var body: some View {
        
        ZStack{
           
            // background container
            Rectangle().foregroundColor(.white).cornerRadius(16)
            
            // content of menu
            
            VStack(alignment:.leading){
                
                Spacer()
                Image("puremotion_logo_full").resizable().aspectRatio(contentMode: .fit).padding(.horizontal,50)
                Rectangle().frame(height:2).padding(50).foregroundColor(lightGray)
                
                
                List{
                    Group{
                        HStack {
                            Image(systemName: "house")
                            Text("Home").onTapGesture {
                                self.currentView = .entries
                            }
                        }
                        HStack {
                            Image(systemName: "person")
                            Text("Community").onTapGesture {
                                self.currentView = .community
                            }
                        }
                        HStack {
                            Image(systemName: "book")
                            Text("About US").onTapGesture {
                                self.currentView = .about
                            }
                        }
                        HStack {
                            Image(systemName: "questionmark.circle")
                            Text("How to use Puremotion?").onTapGesture {
                                self.currentView = .entries
                            }
                        }
                        HStack {
                            Image(systemName: "gear")
                            Text("Settings").onTapGesture {
                                self.currentView = .settings
                            }
                        }
                    }
                }.padding(.leading,40).onTapGesture {
                    self.menuShowing = false
                }
                
                
                Spacer()
                
                HStack {
                    Image(systemName: "power")
                    Text("Logout")
                }.padding(54).foregroundColor(.red).onTapGesture {
                    withAnimation{
                        self.loggedIn = false
                        self.menuShowing = false
                    }
                }
                
                

            }
        }.background(Color(.white)).edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView().environmentObject(UserData()).environmentObject(Controlls())
            SideMenu(currentView: .constant(.entries), menuShowing: .constant(true),loggedIn: .constant(true))
        }
    }
}
