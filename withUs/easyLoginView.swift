//
//  easyLoginView.swift
//  UI
//
//  Created by TaeHwan Kim on 2022/02/14.
//

import SwiftUI

struct easyLoginView: View {
    
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack {
        
            Rectangle()
                .frame(height: 0)
            
            Button {
                presentation.wrappedValue.dismiss()
            } label: {
                Image(systemName: "chevron.left")
                    .font(.system(size: 20))
                    .foregroundColor(.black)
            }
            .frame(maxWidth: .infinity, alignment:.leading)
            .padding()
            
            Text("간편 로그인으로\n빠르게 가입하세요")
                .font(.system(size: 20))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
            
            VStack(spacing: 30) {
                Button {
                    print("구글 로그인")
                } label: {
                    Text("구글 로그인")
                }
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color.green)
                
                Button {
                    print("카카오 로그인")
                } label: {
                    Text("카카오 로그인")
                }
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color.green)
                
                Button {
                    print("네이버 로그인")
                } label: {
                    Text("네이버 로그인")
                }
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color.green)
                
                NavigationLink {
                    withUsJoinView()
                } label: {
                    Text("이메일로 회원가입")
                }
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color.green)

            }   // Second VStack End
            .frame(maxWidth: .infinity)
            .padding()
            
            Spacer()
            
        }   // First VStack End
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)

    }
}

struct easyLoginView_Previews: PreviewProvider {
    static var previews: some View {
        easyLoginView()
    }
}
