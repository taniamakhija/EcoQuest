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
        NavigationStack{
                ZStack(alignment: .top){
                    Image("home bg")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .ignoresSafeArea(edges: .all)
                        .opacity(0.5)
                    
                    Text("Welcome to EcoQuest!")  //title
                        .font(.custom("Georgia", size: 30))
                        .fontWeight(.semibold)
                        .padding(.bottom, 20.0)
                        .foregroundColor(.blue)
                    
                    
            VStack{
                Spacer()
                HStack(spacing: 20) {
                    NavigationLink {
                        createAccount()
                    } label: {
                        Text("Create Account")
                            .font(.custom("Georgia", size: 15))
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .background(
                                Capsule()
                                    .fill(Color.green.opacity(0.2))
                            )
                    }

                    NavigationLink {
                        LogIn()
                    } label: {
                        Text("Log In")
                            .font(.custom("Georgia", size: 15))
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .background(
                                Capsule()
                                    .fill(Color.green.opacity(0.2))
                            )
                    }
                }
                    Spacer()
                    
                
                Text("EcoQuest is a community-driven app that makes sustainable living easy, engaging, and rewarding. Using AI-powered waste scanning, local event discovery, and bite-sized learning, we help you sort waste correctly, take action for the planet, and connect with other environmental changemakers. Every scan, event, and lesson earns you points toward rewards—turning eco-friendly habits into everyday wins for you and the Earth.")
                    .font(.custom("Georgia", size: 20))
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white.opacity(0.30))
                            .padding()
                    )
                    .padding()
                    
                    Spacer()
                    
                    //log/scan page
                    NavigationLink(){
                        LogPage()
                    }
                    label: {
                        Text("Log")
                            .font(.custom("Georgia", size: 20))
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(maxWidth: 300)
                            .background(Color.blue.opacity(0.50))
                            .cornerRadius(15)
                            .shadow(radius: 5)
                            .foregroundColor(.white)
                            .padding()
                    }
                    
                    
                    //event/organizations page
                    NavigationLink(){
                        EventsPage()
                    }
                    label:{
                        Text("Event")
                            .font(.custom("Georgia", size: 20))
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(maxWidth: 300)
                            .background(Color.blue.opacity(0.50))
                            .cornerRadius(15)
                            .shadow(radius: 5)
                            .foregroundColor(.white)
                            .padding()
                    }
                    
                    //learn page
                    NavigationLink(){
                        LearnPage()
                    }
                    label:{
                        Text("Learn")
                            .font(.custom("Georgia", size: 20))
                            .multilineTextAlignment(.center)
                            .padding()
                            .frame(maxWidth: 300)
                            .background(Color.blue.opacity(0.50))
                            .cornerRadius(15)
                            .shadow(radius: 5)
                            .foregroundColor(.white)
                            .padding()
                        
                    }
                }
            }
        }

        }
    }
        
#Preview {
    ContentView()
        .modelContainer(for: DisposedItem.self, inMemory: true)
}
