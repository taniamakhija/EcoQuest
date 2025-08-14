//
//  LogIn.swift
//  EcoQuest
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct LogIn: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isSecure = true

    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {

                Text("EcoQuest") //title
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 40)

                Text("Log in to your account")//"what to do"
                    .font(.title2)
                
                TextField("Email", text: $email)//space for email
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)

                HStack { //password w eye image !! so cool
                    if isSecure {
                        SecureField("Password", text: $password)
                    } else {
                        TextField("Password", text: $password)
                    }
                    Button(action: {
                        isSecure.toggle()
                    }) {
                        Image(systemName: isSecure ? "eye.slash" : "eye")
                            .foregroundColor(.gray)
                    }
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)

                Button(action: { //log in button
                    // Handle login action here
                }) {
                    Text("Log In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                }

                //navigates to create account page
                NavigationLink(destination: createAccount()) {
                    Text("Don't have an account? Create one!")
                        .foregroundColor(Color.blue)
                        .font(.footnote)
                }

                Spacer()
            }
            .padding(.horizontal, 30)
        }
    }
}

#Preview {
    LogIn()
}
