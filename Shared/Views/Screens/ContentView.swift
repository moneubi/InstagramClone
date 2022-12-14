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
            
            NavigationView{
                FeedView(posts: PostArrayObject(), title: "Feed")
            }
                .tabItem{
                    
                    Image(systemName: "book.fill")
                    Text("Feed")
                }
            
            NavigationView{
                BrowseView()
            }
                .tabItem{
                    
                    Image(systemName: "magnifyingglass")
                    Text("Browse")
                }
            UploadView()
                .tabItem{
                    
                    Image(systemName: "square.and.arrow.up.fill")
                    Text("Upload")
                }
            NavigationView{
                ProfileView(isMyProfile: true, profileDisplayname: "My Profile", profileUserID: "")
            }
                .tabItem{
                    
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
        .accentColor(Color.MyTheme.purpleColor)
    }
}
