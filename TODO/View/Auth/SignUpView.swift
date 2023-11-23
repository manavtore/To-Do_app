//
//  SignUpView.swift
//  TODO
//
//  Created by Manav Tore on 22/11/23.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Backgroundview()
                
                VStack(spacing:1){
                    logoview().padding(.top,40)
                    
                    @State var name = ""
                    @State var password = ""
                    @State var email = ""
                    
                    
                    ZStack{
                        Backgroundview()
                        
                        VStack(spacing:1){
                            HStack {
                                Image(systemName: "person" )
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 38, height: 38)
                                    .foregroundColor(.white)
                                    .background(Color(.init(white:1,alpha: 0.15)))
                                
                                
                                TextField("Name", text: $email ).textFieldStyle(RoundedBorderTextFieldStyle())
                                    .font(.system(size: 22))
                                    .colorMultiply(.white)
                                    .keyboardType(.emailAddress)
                                    .background(Color(.init(white:1,alpha: 0.50)))
                            }.padding(10)
                            HStack {
                                Image(systemName: "mail.fill" )
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 38, height: 38)
                                    .foregroundColor(.white)
                                    .background(Color(.init(white:1,alpha: 0.15)))
                                
                                
                                TextField("EmailID", text: $email ).textFieldStyle(RoundedBorderTextFieldStyle())
                                    .font(.system(size: 22))
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
                                
                                TextField("Password", text: $password )
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
                                Button{}label: {
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
                        }
                    }
                    
                  
                }
            }
        }
    }
}

#Preview {
    SignUpView()
}
