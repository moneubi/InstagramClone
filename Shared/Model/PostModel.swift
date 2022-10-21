//
//  PostModel.swift
//  InstagramClone (iOS)
//
//  Created by VO2 Maroc  on 21/10/2022.
//

import Foundation
import SwiftUI

struct PostModel: Identifiable, Hashable{
    
    var id = UUID()
    var postID: String
    var userID: String
    var username: String
    var caption: String?
    var dateCreated: Date
    var likeCount: Int
    var likedByuser: Bool
    
    
    func hash(into hasher: inout Hasher) {
        
        hasher.combine(id)
    }
}
