//
//  ContentView.swift
//  EcoQuest
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        //create login and create account button
        
                
        NavigationStack {
            VStack {
                Text("Welcome to EcoQuest!")  //title
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding()
                
                HStack{
                    NavigationLink(){
                        createAccount()
                    }
                    
                    label: {
                        Text("CreateAccount")
                            .multilineTextAlignment(.center)
                            .padding(8)
                            .background(Color.white.opacity(0.8))
                            .cornerRadius(8)
                    }
                        
                    NavigationLink(){
                        LogIn()
                    }
                    
                    label: {
                        Text("Log in")
                            .multilineTextAlignment(.center)
                            .padding(8)
                            .background(Color.white.opacity(0.8))
                    }
                }
                
                
                Spacer()
                             
                Image(systemName: "leaf.circle.fill") //our logo will go here
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.green)
                
                Text("EcoQuest is a community-driven app that makes sustainable living easy, engaging, and rewarding. Using AI-powered waste scanning, local event discovery, and bite-sized learning, we help you sort waste correctly, take action for the planet, and connect with other environmental changemakers. Every scan, event, and lesson earns you points toward rewards—turning eco-friendly habits into everyday wins for you and the Earth.")
                    .font(.body)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
                
               //log/scan page
                NavigationLink(){
                    LogPage()
                }
                
                label: {
                    Text("Log")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white.opacity(0.9))
                        .cornerRadius(15)
                        .shadow(radius: 5)
                        .foregroundColor(.black)
                        .padding()
                }
                
                
                //event/organizations page
                NavigationLink(){
                    EventsPage()
                }
                label:{
                    Text("Event")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white.opacity(0.9))
                        .cornerRadius(15)
                        .shadow(radius: 5)
                        .foregroundColor(.black)
                        .padding()
                }
                
                
                
                //learn page
                NavigationLink(){
                    LearnPage()
                }
                label:{
                    Text("Learn")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white.opacity(0.9))
                        .cornerRadius(15)
                        .shadow(radius: 5)
                        .foregroundColor(.black)
                        .padding()

                }
            }
        }
    }
}
        
#Preview {
    ContentView()
        .modelContainer(for: DisposedItem.self, inMemory: true)
}
