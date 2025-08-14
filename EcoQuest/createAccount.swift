//
//  CreateAccount.swift
//  EcoQuest
//
//  Created by Scholar on 8/13/25.
//

import SwiftUI

struct createAccount: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var isSecure = true
    @State private var isSecureConfirm = true
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 25) {

                Text("Create Your EcoQuest Account")//title
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding(.top, 40)
                
                TextField("Full Name", text: $name) //enter name
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                
                TextField("Email", text: $email) //enter email
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                
                HStack { //password
                    if isSecure {
                        SecureField("Password", text: $password)
                    } else {
                        TextField("Password", text: $password)
                    }
                    Button(action: { isSecure.toggle() }) {
                        Image(systemName: isSecure ? "eye.slash" : "eye")
                            .foregroundColor(.gray)
                    }
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                
                HStack { //confirm password
                    if isSecureConfirm {
                        SecureField("Confirm Password", text: $confirmPassword)
                    } else {
                        TextField("Confirm Password", text: $confirmPassword)
                    }
                    Button(action: { isSecureConfirm.toggle() }) {
                        Image(systemName: isSecureConfirm ? "eye.slash" : "eye")
                            .foregroundColor(.gray)
                    }
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                
                Button(action: { //create account
                }) {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                }
                .padding(.top, 10)
                
                Spacer()
            }
            .padding(.horizontal, 30)
            .navigationTitle("Create Account")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    createAccount()
}
