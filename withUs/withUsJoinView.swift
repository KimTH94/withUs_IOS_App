//
//  withUsJoinView.swift
//  UI
//
//  Created by TaeHwan Kim on 2022/02/24.
//

import SwiftUI

struct withUsJoinView: View {
    
    @Environment(\.presentationMode) var presentation

    @State var email: String = ""
    @State var password: String = ""
    
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
            
            Text("이메일과 비밀번호를\n입력하세요")
                .font(.system(size: 25))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
            
            
            VStack(alignment: .leading) {
                Text("이메일")
                TextField("개인 이메일 입력", text: $email)
                    .padding(.bottom, 30)
                
                Text("비밀번호")
                TextField("비밀번호 입력", text: $password)
            }
            .padding()
                
                
            Spacer()
            
        }   // First VStack End
        // Test
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct withUsJoinView_Previews: PreviewProvider {
    static var previews: some View {
        withUsJoinView()
    }
}
