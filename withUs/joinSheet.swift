//
//  joinSheet.swift
//  UI
//
//  Created by TaeHwan Kim on 2022/02/08.
//

import SwiftUI

struct joinSheet: View {
    
    @State private var allAgreement: Bool = false // 모두 동의
    @State private var agreement1: Bool = false // 만 14세 이상
    @State private var agreement2: Bool = false // 서비스 이용약관
    @State private var agreement3: Bool = false // 개인정보 수집 및 이용에 대한 안내
    @State private var agreement4: Bool = false // 개인정보 유효기간을 탈퇴 시 까지로 설정
    @State private var agreement5: Bool = false // 맞춤 정보 수신 동의
    
    @Binding private var goJoin: Bool
    init(goJoin: Binding<Bool> = .constant(false)) {
        _goJoin = goJoin
    }
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading, spacing: 0) {
                
                
                HStack(spacing: 5.0) {
                    Button {
                        print("모두 동의합니다.")
                        allAgreement.toggle()
                        agreement1.toggle()
                        agreement2.toggle()
                        agreement3.toggle()
                        agreement4.toggle()
                        agreement5.toggle()
                    } label: {
                        if allAgreement {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(Color.black)
                        } else {
                            Image(systemName: "checkmark.circle")
                                .foregroundColor(Color.gray)
                        }
                        
                    }
                    .padding(.trailing, 10)

                    Text("모두 동의합니다.")
                        .font(.system(size: 11))

                    Spacer()
                }
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray)
                )   // all Agreement HStack End



                HStack {
                    Button {
                        print("(필수)만 14세 이상입니다.")
                        agreement1.toggle()
                    } label: {
                        Image(systemName: "checkmark")
                            .foregroundColor(agreement1 ? Color.black : Color.gray)
                    }
                    .padding(.trailing, 10)

                    Text("(필수) 만 14세 이상입니다.")
                        .font(.system(size: 11))
                        .foregroundColor(Color.gray)
                    
                    Spacer()
                    
                }
                .padding()  // Agreement1 HStack End


                HStack {
                    Button {
                        print("(필수) 서비스 이용약관")
                        agreement2.toggle()
                    } label: {
                        Image(systemName: "checkmark")
                            .foregroundColor(agreement2 ? Color.black : Color.gray)
                    }
                    .padding(.trailing, 10)

                    Text("(필수) 서비스 이용약관")
                        .font(.system(size: 11))
                        .foregroundColor(Color.gray)

                    Spacer()
                    
                    Button {
                        goJoin = true
                    } label: {
                        Image(systemName: "greaterthan")
                            .foregroundColor(Color.gray)
                    }
                    
                }
                .padding()  // Agreement2 HStack End

                
                HStack {
                    Button {
                        print("(필수) 개인정보 수집 및 이용에 대한 안내")
                        agreement3.toggle()
                    } label: {
                        Image(systemName: "checkmark")
                            .foregroundColor(agreement3 ? Color.black : Color.gray)
                    }
                    .padding(.trailing, 10)

                    Text("(필수) 개인정보 수집 및 이용에 대한 안내")
                        .font(.system(size: 11))
                        .foregroundColor(Color.gray)

                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "greaterthan")
                            .foregroundColor(Color.gray)
                    }
                }
                .padding()  // Agreement3 HStack End

                
                HStack {
                    Button {
                        print("개인정보 유효기간을 탈퇴 시 까지로 설정")
                        agreement4.toggle()
                    } label: {
                        Image(systemName: "checkmark")
                            .foregroundColor(agreement4 ? Color.black : Color.gray)
                    }
                    .padding(.trailing, 10)

                    Text("개인정보 유효기간을 탈퇴 시 까지로 설정")
                        .font(.system(size: 11))
                        .foregroundColor(Color.gray)

                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "greaterthan")
                            .foregroundColor(Color.gray)
                    }
                }
                .padding()  // Agreement4 HStack End

                
                HStack {
                    Button {
                        print("위더스 맞춤 정보 수신 동의")
                        agreement5.toggle()
                    } label: {
                        Image(systemName: "checkmark")
                            .foregroundColor(agreement5 ? Color.black : Color.gray)
                    }
                    .padding(.trailing, 10)

                    Text("맞춤 정보 수신 동의")
                        .font(.system(size: 11))
                        .foregroundColor(Color.gray)

                    Spacer()
                }
                .padding()  // Agreement5 HStack End
                
                Button {
                    
                    goJoin.toggle()
                    //print("다음 : ", self.$goJoin)
                } label: {
                    Spacer()
                    
                    Text("다 음")
                    
                    Spacer()
                }
                .frame(height: 50)
                .background(agreement1 && agreement2 && agreement3 ? Color.black : Color.gray)
                .foregroundColor(Color.white)
                .cornerRadius(10)
                .padding(.top, 20)
                .disabled(agreement1 && agreement2 && agreement3 ? false : true)// Next Button End
                
                

            } // first VStack End
            .cornerRadius(10)
            .background(Color.white)
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }   // NavigationView End
        
    }
}

struct joinSheet_Previews: PreviewProvider {
    static var previews: some View {
        joinSheet()
    }
}
