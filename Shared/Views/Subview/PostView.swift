//
//  PostView.swift
//  InstagramClone
//
//  Created by VO2 Maroc  on 21/10/2022.
//

import SwiftUI

struct PostView: View {
    
    @State var post: PostModel
    var showHeaderAndFooter: Bool
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 0, content: {
            
            if showHeaderAndFooter{
                
                //Header
                HStack{
                    
                    Image("dog1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30, alignment: .center)
                        .cornerRadius(15)
                    
                    Text(post.username)
                        .font(.callout)
                        .fontWeight(.medium)
                        .foregroundColor(.primary)
                    
                    Spacer()
                    Image(systemName: "ellipsis")
                        .font(.headline)
                }
                .padding(.all, 12)
            }
            
            // IMAGE
            Image("dog1")
                .resizable()
                .scaledToFit()
            
            if showHeaderAndFooter{
                
                // Footer
                HStack(alignment: .center, spacing: 20, content: {
                    
                    Image(systemName: "heart")
                        .font(.title3)
                        .foregroundColor(.primary)
                    
                    NavigationLink(destination: CommentView(), label: {
                        
                        Image(systemName: "bubble.middle.bottom")
                            .font(.title3)
                            .foregroundColor(.primary)
                    })
                    
                    Image(systemName: "paperplane")
                        .font(.title3)
                        .foregroundColor(.primary)
                    
                    Spacer()
                })
                .padding(.all, 12)
                
                if let caption = post.caption{
                
                    HStack{
                        
                        Text(caption)
                        
                        Spacer(minLength: 0)
                    }
                    .padding(.all, 12)
                }
            }
        })
    }
}

struct PostView_Previews: PreviewProvider {
    
    static var post: PostModel = PostModel(postID: "", userID: "", username: "Dev IOS", caption: "This is a test caption", dateCreated: Date(), likeCount: 0, likedByuser: false)
    
    static var previews: some View {
        PostView(post: post, showHeaderAndFooter: true)
            .previewLayout(.sizeThatFits)
    }
}
