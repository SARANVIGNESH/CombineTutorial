//
//  SignUpView.swift
//  CombineTutorial
//
//  Created by Saranvignesh Soundararajan on 4/8/24.
//

import Foundation
import SwiftUI
import Combine


struct SignUpView: View {
    
    @ObservedObject private var userViewModel = UserViewModel()
    
    var body: some View {
        Form(content: {
            Section {
                TextField("Username", text: $userViewModel.username)
                    .autocapitalization(.none)
            } footer: {
                Text(userViewModel.usernameMessage).foregroundStyle(Color.red)
            }
            Section {
                SecureField("Password", text: $userViewModel.password)
                SecureField("Password again", text: $userViewModel.passwordAgain)
            } footer: {
                Text(userViewModel.passwordMessage).foregroundStyle(Color.red)
            }
            Section {
                Button(action: {
                    print("Signed Up Successfully")
                }) {
                    Text("Sign up")
                }
                .disabled(!userViewModel.isValid)
            }
        })
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
