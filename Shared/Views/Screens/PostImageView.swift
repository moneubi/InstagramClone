//
//  PostImageView.swift
//  InstagramClone
//
//  Created by VO2 Maroc  on 23/10/2022.
//

import SwiftUI

struct PostImageView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var captionText: String = ""
    @Binding var imageSelected: UIImage
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 0, content: {
            
            HStack{
                
                Button(action: {
                    
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    
                    Image(systemName: "xmark")
                        .font(.title)
                        .padding()
                })
                .accentColor(.primary)
                
                Spacer()
            }
            
            ScrollView(.vertical, showsIndicators: false, content: {
                
                Image(uiImage: imageSelected)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200, alignment: .center)
                    .cornerRadius(12)
                    .clipped()
                
                TextField("Add your caption here...", text: $captionText)
                    .padding()
                    .frame(height: 60)
                    .frame(maxWidth: .infinity)
                    .background(Color.MyTheme.beigeColor)
                    .font(.headline)
                    .padding(.horizontal)
                    .cornerRadius(12)
                    .autocapitalization(.sentences)
                
                Button(action: {
                    
                }, label: {
                    
                    Text("Post Picture!".uppercased())
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding()
                        .frame(height: 60)
                        .frame(maxWidth: .infinity)
                        .background(Color.MyTheme.purpleColor)
                        .font(.headline)
                        .padding(.horizontal)
                        .padding(.vertical)
                        .cornerRadius(12)
                })
                .accentColor(Color.MyTheme.yellowColor)
            })
        })
    }
    
    //
    func postPicture(){
        
        //
        print("POST PICTURE TO DATABASE")
    }
}

struct PostImageView_Previews: PreviewProvider {
    
    @State static var image = UIImage(named: "dog1")!
    
    static var previews: some View {
        PostImageView(imageSelected: $image)
            .preferredColorScheme(.light)
    }
}
