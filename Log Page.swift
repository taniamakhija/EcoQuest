//
//  Log Page.swift
//  EcoQuest
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct Log_Page: View {
    @State private var showTrash = false
    @State private var showRecycling = false
    @State private var showCompost = false
    var body: some View {
        ZStack {
            VStack {
                Text("Trash Logging")
                    .font(.title)
                    .fontWeight(.black)
                
                HStack {
                    //makes the trash button
                    Button {
                        withAnimation {
                            showTrash = true
                        }
                    } label: {
                        Text("trash")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    //makes the recyling button
                    Button {
                        withAnimation {
                            showRecycling = true
                        }
                    } label: {
                        Text("recycling")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    //makes the compost button
                    Button {
                        withAnimation {
                            showCompost = true
                        }
                    } label: {
                        Text("compost")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                }
            }
        }
        //creates the popup for the trash bin
        .overlay(
            Group {
                if showTrash {
                    HStack {
                        Button("<") {
                            showTrash = false
                        }
                        Text("Trashed Items")
                            .font(.headline)
                            .padding()
    //                        Button("+") {
    //
    //                        }
                    }
                    .frame(width: 300, height: 200)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                }
            }
        )
        //creates the popup for the recyling bin
        .overlay(
            Group {
                if showRecycling {
                    HStack {
                        Button("<") {
                            showRecycling = false
                        }
                        Text("Recycled Items")
                            .font(.headline)
                            .padding()
//                            Button("+") {
//
//                            }
                    }
                    .frame(width: 300, height: 200)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                }
            }
        )
        //creates the popup for the compost bin
        .overlay(
            Group {
                if showCompost {
                    HStack {
                        Button("<") {
                            showCompost = false
                        }
                        Text("Compsted Items")
                            .font(.headline)
                            .padding()
    //                       Button("+") {
    //
    //                       }
                    }
                    .frame(width: 300, height: 200)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                }
            }
        )
    }
}

#Preview {
    Log_Page()
}
