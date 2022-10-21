//
//  PostArrayObject.swift
//  InstagramClone (iOS)
//
//  Created by VO2 Maroc  on 21/10/2022.
//

import Foundation

class PostArrayObject: ObservableObject{
    
    @Published var dataArray = [PostModel]()
    
    init(){
        
        let post1 = PostModel(postID: "", userID: "", username: "Libs MBAYE", caption: "This is a caption", dateCreated: Date(), likeCount: 15, likedByuser: false)
        let post2 = PostModel(postID: "", userID: "", username: "Lima MBAYE", caption: nil, dateCreated: Date(), likeCount: 9, likedByuser: true)
        let post3 = PostModel(postID: "", userID: "", username: "Libase MBAYE", caption: "This is a second caption three", dateCreated: Date(), likeCount: 0, likedByuser: false)
        let post4 = PostModel(postID: "", userID: "", username: "Lamine MBAYE", caption: nil, dateCreated: Date(), likeCount: 1, likedByuser: true)
        
        self.dataArray.append(post1)
        self.dataArray.append(post2)
        self.dataArray.append(post3)
        self.dataArray.append(post4)
    }
}
