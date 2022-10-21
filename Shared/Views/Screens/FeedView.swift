//
//  FeedView.swift
//  InstagramClone
//
//  Created by VO2 Maroc  on 21/10/2022.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: true, content: {
            
            PostView()
            PostView()
            PostView()
            PostView()
            PostView()
        })
        .navigationTitle("FEED VIEW")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView{
            
           FeedView()
        }
    }
}
