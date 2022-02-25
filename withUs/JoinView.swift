//
//  JoinView.swift
//  UI
//
//  Created by TaeHwan Kim on 2022/01/26.
//

import SwiftUI

struct JoinView: View {
    
    @State private var isPresented = false
    @State var goJoin: Bool = false
    
    var body: some View {
        
        NavigationView {
            ZStack {
                VStack {
                    infoView()
                        .padding(.bottom, 30)

                    VStack {

                        Button(action: {

                        }) {
                            Text("기존 회원 로그인")
                                .font(.system(size: 15))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color("UBlack")
                        )
                        .cornerRadius(11)
                        .padding(.bottom)

                        Button(action: {
                            print("회원가입")
                            isPresented.toggle()
                        }) {
                            Text("회원가입")
                                .foregroundColor(Color.secondary)
                                .font(.system(size: 10))
                                .fontWeight(.bold)

                        }
                            .frame(maxWidth: .infinity)
                            .frame(height: 30)
                            .background(Color(.clear))
                            .cornerRadius(11)
                        
                        NavigationLink {
                            mainView()
                        } label: {
                            Text("둘러 보기")
                        }

                        

                    }
                    .frame(height: 110)

                }   // first VStack
                .padding()
                .background(Color.clear)
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
                
                
                GeometryReader { geometry in
                    if isPresented {
                        
                        VStack {
                            Rectangle()
                                .frame(height: 0)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.gray)
                        .opacity(0.8)
                        .onTapGesture {
                            isPresented.toggle()
                            print("부모 뷰 : ", goJoin)
                        }
                        
                        VStack {
                            joinSheet(goJoin: $goJoin)
                                .frame(height: 350)
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
                
            }   // ZStack End Point
//            /.background(isPresented ? Color.gray : Color.clear)
            
        }   // NavigationView End Point
        
        
        
        
    }

}


struct JoinView_Previews: PreviewProvider {
    static var previews: some View {
        JoinView()
    }
}

