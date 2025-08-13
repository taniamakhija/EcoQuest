//
//  EventsPage.swift
//  EcoQuest
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct EventsPage: View {
    func addEvent(name: String, info: String) {
        
    }
    var body: some View {
        ZStack{
            Image("color")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            
    ScrollView{
        VStack{
            
            ZStack(alignment: .top){
                Image("b1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: .infinity, height: 650)
                    .ignoresSafeArea(edges: .top)
                
                Text("Events")
                    .font(.custom("Georgia", size: 50))
                    .font(.largeTitle)
                    .fontWeight(.thin)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .bold()
                    .padding(.top, 650.0)
            } //title
            .frame(height: 600.0)
            
            
            ZStack(){
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 500.0, height: 400)
                    .opacity(0)
            }
            
            
            
            
                
        }
        .padding(.bottom, 2.0)//end of vStack
        
        .scrollTransition{content, phase in content
        .opacity(phase.isIdentity ? 1.0 :0.0)
        .scaleEffect(x: phase.isIdentity ? 1.0 : 0.3,
                     y: phase.isIdentity ? 1.0 : 0.3)
        .offset(y: phase.isIdentity ? 0: 50)
            
        }//end of scroll transition stuff
        
    }// end of scroll
    .background(Color.clear)
    .scrollContentBackground(.hidden)
    .ignoresSafeArea(edges: .top)
}
        .tint(.white)
        .toolbarBackground(.hidden, for: .navigationBar)
}
}

#Preview {
    EventsPage()
}
