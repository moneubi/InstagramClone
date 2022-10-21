//
//  CommentModel.swift
//  InstagramClone
//
//  Created by VO2 Maroc  on 21/10/2022.
//

import Foundation
import SwiftUI

struct CommentModel: Identifiable, Hashable{
    
    var id = UUID()
    var commentID: String
    var userID: String
    var username: String
    var content: String
    var dateCreated: Date
    
    func hash(into hasher: inout Hasher) {
        
        hasher.combine(id)
    }
}
