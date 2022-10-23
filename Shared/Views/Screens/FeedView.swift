//
//  FeedView.swift
//  InstagramClone
//
//  Created by VO2 Maroc  on 21/10/2022.
//

import SwiftUI

struct FeedView: View {
    
    @ObservedObject var posts: PostArrayObject
    var title: String
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: true, content: {
            
            LazyVStack{
                
                ForEach(posts.dataArray, id: \.id){ post in
                    
                    PostView(post: post, showHeaderAndFooter: true)
                }
            }
        })
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        NavigationView{
            
            FeedView(posts: PostArrayObject(), title: "Feed test")
        }
    }
}
