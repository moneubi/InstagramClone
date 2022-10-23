//
//  BrowseView.swift
//  InstagramClone
//
//  Created by VO2 Maroc  on 23/10/2022.
//

import SwiftUI

struct BrowseView: View {
    
    var posts = PostArrayObject()
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content: {
            
            CarousselView()
            ImageGridView(posts: posts)
        })
        .navigationTitle("Browse")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView{
            
           BrowseView()
        }
    }
}
