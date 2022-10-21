//
//  ContentView.swift
//  Shared
//
//  Created by VO2 Maroc  on 14/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //Tab
        tabViewSection()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct tabViewSection: View{
    
    var body: some View{
        
        TabView{
            
            Text("Screen One")
                .tabItem{
                    
                    Image(systemName: "book.fill")
                    Text("Feed")
                }
            Text("Screen Two")
                .tabItem{
                    
                    Image(systemName: "magnifyingglass")
                    Text("Browse")
                }
            Text("Screen Three")
                .tabItem{
                    
                    Image(systemName: "square.and.arrow.up.fill")
                    Text("Upload")
                }
            Text("Screen Four")
                .tabItem{
                    
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
        .accentColor(Color.MyTheme.purpleColor)
    }
}