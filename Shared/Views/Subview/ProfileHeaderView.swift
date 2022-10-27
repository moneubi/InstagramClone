//
//  ProfileHeaderView.swift
//  InstagramClone
//
//  Created by MBAYE Libasse on 27/10/2022.
//

import Foundation
import SwiftUI

struct ProfileHeaderView: View{
    
    @Binding var profileDisplayName: String
    
    var body: some View{
        
        VStack(alignment: .center, spacing: 10, content: {
            
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 120, alignment: .center)
                .cornerRadius(60)
            
            Text(profileDisplayName)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("This is the area where the user can add a bio to their profile!")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
            
            HStack(alignment: .center ,spacing: 20, content: {
                
                VStack(alignment: .center, spacing: 5, content: {
                    
                    Text("5")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Capsule()
                        .fill(Color.gray)
                        .frame(width: 20, height: 2, alignment: .center)
                    
                    Text("Posts")
                        .font(.callout)
                        .fontWeight(.medium)
                    
                })
                
                VStack(alignment: .center, spacing: 5, content: {
                    
                    Text("25")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Capsule()
                        .fill(Color.gray)
                        .frame(width: 20, height: 2, alignment: .center)
                    
                    Text("Likes")
                        .font(.callout)
                        .fontWeight(.medium)
                    
                })
            })
            
        })
        .frame(maxWidth: .infinity)
        .padding()
    }
}

struct ProfileHeaderView_Previews: PreviewProvider{
    
    @State static var name: String = "Libs"
    
    static var previews: some View{
        
        ProfileHeaderView(profileDisplayName: $name)
            .previewLayout(.sizeThatFits)
    }
}
