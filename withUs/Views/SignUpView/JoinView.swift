//
//  JoinView.swift
//  UI
//
//  Created by TaeHwan Kim on 2022/01/26.
//

import SwiftUI

struct JoinView: View {
    
    @State private var showSignInView = false
    @State private var showSignUpView = false
    
    @State var goJoin: Bool = false
    
    var body: some View {
        
        NavigationView {
            ZStack {
                VStack {
                    ImageSliderView()
                        .padding(.bottom, 30)

                    VStack {
                        // Start SignIn, SignUp Button Stack
                        HStack {
                            // Start SignIn Button
                            Button(action: {
                                showSignInView.toggle()
                            }) {
                                Text(signInText)
                                    .font(.system(size: 17))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                            }
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 11)
                                    .stroke(Color.secondary, lineWidth: 1)
                            )
                            .padding(.bottom)
                            // End SignIn Button
                            
                            // Start SignUp Button
                            Button(action: {
                                showSignUpView.toggle()
                            }) {
                                Text(signUpText)
                                    .font(.system(size: 17))
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                            }
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(Color.black)
                            .cornerRadius(11)
                            .padding(.bottom)
                        }
                        // End SignIn, SignUp Button Stack

                        // Start findAccount Button
                        Button(action: {
                            
                        }) {
                            Text(findAccountText)
                                .foregroundColor(Color.secondary)
                                .font(.system(size: 10))
                                .fontWeight(.bold)
                            
                            Text(findAccountButton)
                                .underline()
                                .foregroundColor(Color.black)
                                .font(.system(size: 10))
                                .fontWeight(.bold)

                        }
                            .frame(maxWidth: .infinity)
                            .frame(height: 30)
                            .background(Color(.clear))
                            .cornerRadius(11)
                        // End findAccount Button
                    }
                    .frame(height: 110)
                    // Start SignIn, SignUp Button Stack
                }
                .padding()
                .background(Color.clear)
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
                
                
                GeometryReader { geometry in
                    
                    if showSignInView {
                        VStack {
                            Rectangle()
                                .frame(height: 0)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.gray)
                        .opacity(0.8)
                        .onTapGesture {
                            showSignInView.toggle()
                        }
                        
                        VStack {
                            SignInSheet(goJoin: $goJoin)
                                .frame(height: 400)
                                .padding()
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(10)
                        .offset(y: geometry.size.height - 380)
                    }
                    
                    if showSignUpView {
                        VStack {
                            Rectangle()
                                .frame(height: 0)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.gray)
                        .opacity(0.8)
                        .onTapGesture {
                            showSignUpView.toggle()
                        }
                        
                        VStack {
                            joinSheet(goJoin: $goJoin)
                                .frame(height: 400)
                                .padding()
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(10)
                        .offset(y: geometry.size.height - 380)
                    }
                }
                
                NavigationLink("",destination: easyLoginView(), isActive: $goJoin)
                
            }
        }
        
        
        
        
    }

}


struct JoinView_Previews: PreviewProvider {
    static var previews: some View {
        JoinView()
    }
}

