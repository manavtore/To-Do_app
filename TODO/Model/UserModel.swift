//
//  UserModel.swift
//  TODO
//
//  Created by Manav Tore on 24/11/23.
//

import Foundation
import FirebaseAuth
import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var email=""
    @Published var password = ""
    @Published var errorMessage = ""
    init(email: String = "", password: String = "") {
        self.email = email
        self.password = password
    }
    func login(){
        guard validate() else {
            return
        }
        Auth.auth().signIn(withEmail: email, password: password)
        
//        shouldNavigateToSignUp = true
//        NavigationLink(
//            destination: SignUpView(), label: {
//                Text("Don't have an account? Signup")
//                    .font(.system(size: 14,weight: .bold))
//                    .border(Color.black)
//                    .foregroundColor(.white)
//                    .frame(width:200)
//            })
        
    }
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else{
            errorMessage = "Please enter valid email."
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email."
            return false
        }
        return true
    }
   
   
}
