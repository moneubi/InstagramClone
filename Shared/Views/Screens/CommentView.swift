//
//  CommentView.swift
//  InstagramClone
//
//  Created by VO2 Maroc  on 21/10/2022.
//

import SwiftUI

struct CommentView: View {
    
    @State var textEnteredByUser: String = ""
    @State var commentArrayObject = [CommentModel]()
    
    var body: some View {
        
        VStack{
            
            ScrollView{
                
                LazyVStack{
                    
                    //for each
                    ForEach(commentArrayObject, id: \.id){ comment in
                        
                        MessageView(comment: comment)
                    }
                }
            }
            
            HStack{
                
                Image("dog1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40, alignment: .center)
                    .cornerRadius(20)
                
                TextField("Add a comment here...", text: $textEnteredByUser)
                
                Spacer()
                
                Button(action: {
                    
                    
                }, label: {
                    
                    Image(systemName: "paperplane.fill")
                        .font(.title2)
                })
                .accentColor(Color.MyTheme.purpleColor)
            }
            .padding(.all, 12)
        }
        .navigationTitle("Comments")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear(perform: {
            
            getComments()
        })
    }
    
    //MARK: FUNCTIONS
    
    func getComments(){
        
        print("get comments from DataBase")
        
        let comment1 = CommentModel(commentID: "", userID: "", username: "Libs Mbaye", content: "This is the first comment", dateCreated: Date())
        let comment2 = CommentModel(commentID: "", userID: "", username: "Marie", content: "This is the second comment", dateCreated: Date())
        let comment3 = CommentModel(commentID: "", userID: "", username: "Stephane", content: "This is the Third comment", dateCreated: Date())
        let comment4 = CommentModel(commentID: "", userID: "", username: "Lamine", content: "This is the fourth comment", dateCreated: Date())
        let comment5 = CommentModel(commentID: "", userID: "", username: "Alain", content: "This is the fifth comment", dateCreated: Date())
        let comment6 = CommentModel(commentID: "", userID: "", username: "Kenza", content: "This is the sixth comment", dateCreated: Date())
        
        self.commentArrayObject.append(comment1)
        self.commentArrayObject.append(comment2)
        self.commentArrayObject.append(comment3)
        self.commentArrayObject.append(comment4)
        self.commentArrayObject.append(comment5)
        self.commentArrayObject.append(comment6)
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView{
           CommentView()
        }
    }
}
