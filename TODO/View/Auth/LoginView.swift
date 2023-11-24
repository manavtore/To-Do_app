//
//  LoginView.swift
//  TODO
//
//  Created by Manav Tore on 05/11/23.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

struct LoginView: View {
    @State var email = ""
    var body: some View {
        NavigationView{
            ZStack{
                Backgroundview()
                
                VStack(spacing:1){
                    logoview().padding(.top,40)
                    
                    EmailTextField()
                    
                    NavigationLink(
                        destination: SignUpView(), label: {
                            Text("Don't have an account? Signup")
                                .font(.system(size: 14,weight: .bold))
                                .border(Color.black)
                                .foregroundColor(.white)
                                .frame(width:200)
                        })
                  
                }
            }
        }
        
        
    }
}

#Preview {
    LoginView()
}
