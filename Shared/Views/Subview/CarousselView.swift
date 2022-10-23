//
//  CarousselView.swift
//  InstagramClone
//
//  Created by VO2 Maroc  on 23/10/2022.
//

import SwiftUI

struct CarousselView: View {
    
    @State var selection: Int = 1
    let maxCount: Int = 8
    @State var timerAdded: Bool = false
    
    var body: some View {
        
        TabView(selection: $selection, content: {
            
            ForEach(1..<maxCount){ count in
                
                Image("dog\(count)")
                    .resizable()
                    .scaledToFill()
                    .tag(count)
            }
        })
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 300)
        .animation(.default)
        .onAppear(perform: {
            
            if !timerAdded{
                addTimer()
            }
        })
    }
    
    //
    func addTimer(){
        
        timerAdded.toggle()
        let timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true){ (timer) in
            
            if selection == (maxCount - 1){
                
                selection = 1
            }else{
                
                selection += 1
            }
        }
        
        timer.fire()
    }
}

struct CarousselView_Previews: PreviewProvider {
    static var previews: some View {
        CarousselView()
            .previewLayout(.sizeThatFits)
    }
}
