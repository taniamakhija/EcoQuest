//
//  EventsPage.swift
//  EcoQuest
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct EventsPage: View {
    var body: some View {
        ZStack{
            Image("color")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            
    ScrollView{
        VStack{
            ZStack(alignment: .top){
                VStack(spacing: 0){
                Image("b1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
//                Spacer()
                
            } //Background Image
            VStack{
                Text("Events")
                    .font(.custom("Georgia", size: 50))
                    .font(.largeTitle)
                    .fontWeight(.thin)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .bold()
                    .padding(.top, 500)
                
            } // Events title
        } //title


//            Spacer()
//            
            ZStack(alignment: .top){
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 500.0, height: 700.0)
            }
                
        }//end of vStack
        
        .scrollTransition{content, phase in content
        .opacity(phase.isIdentity ? 1.0 :0.0)
        .scaleEffect(x: phase.isIdentity ? 1.0 : 0.3,
                     y: phase.isIdentity ? 1.0 : 0.3)
        .offset(y: phase.isIdentity ? 0: 50)
            
        }//end of scroll transition stuff
        
    }// end of scroll
//    .background(Color.clear)
    .scrollContentBackground(.hidden)
    .ignoresSafeArea(edges: .top)
}
        .toolbarBackground(.hidden, for: .navigationBar)
}
}

#Preview {
    EventsPage()
}
