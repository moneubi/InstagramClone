//
//  ProfileView.swift
//  InstagramClone
//
//  Created by DIFA SGMA on 27/10/2022.
//

import SwiftUI

struct ProfileView: View {
    
    var isMyProfile: Bool
    @State var profileDisplayname: String
    var profileUserID: String
    var posts = PostArrayObject()
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content: {
            
            ProfileHeaderView(profileDisplayName: $profileDisplayname)
            
            Divider()
            // MARK: Image of user
            ImageGridView(posts: posts)
        })
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing:
            Button(action: {
            
            }, label: {
            
                Image(systemName: "line.horizontal.3")
            })
            .accentColor(Color.MyTheme.purpleColor)
            .opacity(isMyProfile ? 1.0 : 0)
        )
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView{
            ProfileView(isMyProfile: true, profileDisplayname: "Libs", profileUserID: "")
        }
    }
}
