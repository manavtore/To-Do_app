//
//  Textfield.swift
//  TODO
//
//  Created by Manav Tore on 21/11/23.
//

import SwiftUI

struct EmailTextField: View {
    @StateObject private var loginViewModel = LoginViewModel()
    var body: some View {
        @State var name = ""
        @State var password = ""
        @State var email = ""
        
        
        ZStack{
            Backgroundview()
            
            VStack(spacing:1){
                HStack {
                    Image(systemName: "mail.fill" )
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 38, height: 38)
                        .foregroundColor(.white)
                        .background(Color(.init(white:1,alpha: 0.15)))
                    
                    
                    TextField("Enter the EmailID", text: $email ).textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(.system(size: 22))
                        .textInputAutocapitalization(.never)
                        .colorMultiply(.white)
                        .keyboardType(.emailAddress)
                        .background(Color(.init(white:1,alpha: 0.50)))
                }.padding(10)
                
                
                HStack {
                    Image(systemName: "lock" )
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 38, height: 38)
                        .foregroundColor(.white)
                    
                    TextField("Enter the Password", text: $password )
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(.system(size: 22))
                        .colorMultiply(.white)
                    
                }.padding(10)
                
                HStack {
                    Spacer()
                    Button{
                        
                    }label:{
                        Text("Forgot Password?")
                            .foregroundColor(.white)
                            .font(.system(size: 13,weight: .semibold))
                            .padding(.top)
                        .padding(.horizontal)}
                }
                
                HStack {
                    Button(action: {
                        loginViewModel.login()
                    }){
                        Text("Log in")
                            .font(.system(size: 30,weight: .bold))
                            .border(Color.black)
                            .foregroundColor(.white)
                            .frame(width:200)
                           
                    }.overlay(
                        RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.secondary, lineWidth: 6)
                    )
    
                        
                }.padding(.top)
            }.environmentObject(loginViewModel)
        }
    }
}

#Preview {
    EmailTextField()
    
}
