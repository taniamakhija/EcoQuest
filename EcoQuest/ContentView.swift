//
//  ContentView.swift
//  EcoQuest
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome to EcoQuest!")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding()
                
               //log page
                NavigationLink(destination:
                    VStack {
                        Text("Log Page")
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                    }
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                ) {
                    Text("Log")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                }
                
                
                //event page
                NavigationLink(destination:
                    VStack {
                        Text("Event Page")
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                    }
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                ) {
                    Text("Event")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                }
                
                //learn page
                NavigationLink(destination:
                    VStack {
                        Text("Learn Page")
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                    }
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                ) {
                    Text("Learn")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
