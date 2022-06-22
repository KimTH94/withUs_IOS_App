//
//  SignInSheet.swift
//  withUs
//
//  Created by Taehwan Kim on 2022/06/12.
//

import SwiftUI

struct SignInSheet: View {
    
    @Binding private var goJoin: Bool
    init(goJoin: Binding<Bool> = .constant(false)) {
        _goJoin = goJoin
    }
    
    var signInMethod : [SignInMethod] = [
        SignInMethod(MethodName: "네이버", imageURL: "네이버가자", redirectionURL: "네이버로그인가자"),
        SignInMethod(MethodName: "구글", imageURL: "구글가자", redirectionURL: "구글로그인가자"),
        SignInMethod(MethodName: "카카오", imageURL: "카카오가자", redirectionURL: "카카오로그인가자"),
        SignInMethod(MethodName: "애플", imageURL: "애플가자", redirectionURL: "애플로그인가자")
    ]
    
    var body: some View {
        
        // Start VStack
        VStack {
            
            Text(chooseSignInMethod)
                .bold()
            
            // Start GeometryReader for Make SignUp Method Buttom
            
                
                // Start HStack for sort signup button
            GeometryReader { geometry in
                HStack(spacing: 15) {

                    ForEach(signInMethod.indices, id: \.self) { index in
                        
                        Button(action: {
                            print("\(signInMethod.count), \(geometry.size.width)")
                        }) {
                            Circle()
                                .frame(width: geometry.size.width / CGFloat(signInMethod.count + 1) , height: geometry.size.width / CGFloat(signInMethod.count + 1))
                        }
                        
                    }
                }
                .padding()
                // End HStack for sort signup button
                
            }
            // End GeometryReader For Make SignUp Method Buttom
            
        }
        // End VStack
            
            
            
            
         
        // End VStack
        
    }
    
}

struct SignInSheet_Previews: PreviewProvider {
    static var previews: some View {
        SignInSheet()
    }
}
