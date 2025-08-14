//
//  LearnPage.swift
//  EcoQuest
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct LearnPage: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // Background image
                Image("natureBackground") // Replace with your image asset name
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .overlay(Color.black.opacity(0.25)) // Dark overlay for readability
                
                ScrollView {
                    VStack(spacing: 25) {
                        Text("Learn with EcoQuest")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .shadow(radius: 3)
                            .padding(.top, 30)
                        
                        Text("Explore topics about the environment and sustainability. Tap on a section to learn more!")
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white.opacity(0.9))
                            .padding(.horizontal)
                        
                        // Topic cards
                        Group {
                            NavigationLink(destination: TopicDetail(title: "Where your trash goes!", description: "...")) {
                                topicCard(title: "♻️ Recycling, Landfill, Compost", color: Color.green.opacity(0.6))
                            }
                            
                            NavigationLink(destination: TopicDetail(title: "Climate Change", description: "...")) {
                                topicCard(title: "🌍 Climate Change", color: Color.teal.opacity(0.6))
                            }
                            
                            NavigationLink(destination: TopicDetail(title: "Wildlife Protection", description: "...")) {
                                topicCard(title: "🦋 Wildlife Protection", color: Color.brown.opacity(0.6))
                            }
                            
                            NavigationLink(destination: TopicDetail(title: "Renewable Energy", description: "...")) {
                                topicCard(title: "⚡ Renewable Energy", color: Color.yellow.opacity(0.6))
                            }
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Learn")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    // Reusable card style
    func topicCard(title: String, color: Color) -> some View {
        Text(title)
            .font(.title2)
            .fontWeight(.medium)
            .frame(maxWidth: .infinity, minHeight: 100)
            .background(color.blur(radius: 0).background(.ultraThinMaterial)) // soft translucent look
            .foregroundColor(.white)
            .cornerRadius(20)
            .shadow(radius: 5)
            .padding(.horizontal)
    }
}

struct TopicDetail: View {
    var title: String
    var description: String
    
    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text(title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                    
                    Text(description)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white.opacity(0.9))
                        .padding()
                        .background(Color.black.opacity(0.3))
                        .cornerRadius(15)

                }
                .padding()
            }
        }
        .navigationTitle(title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LearnPage()
}
