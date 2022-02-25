//
//  infoView.swift
//  UI
//
//  Created by TaeHwan Kim on 2022/01/20.
//

import SwiftUI

struct infoView: View {
    var body: some View {
        Info()
    }
}

struct infoView_Previews: PreviewProvider {
    static var previews: some View {
        infoView()
    }
}

struct Info : View {
    @State var offSet : CGFloat = 0
    @State var temp : Int = 0
    
    var colors : [Color] = [.red, .blue, .yellow, .purple]
    
    var body: some View {
        
            TabView {
                ForEach(colors.indices, id: \.self) { index in
                    if index == 0 {
                        colors[index]
                            .overlay(
                                GeometryReader{ proxy -> Color in
                                    let minX = proxy.frame(in: .global).minX
                                    DispatchQueue.main.async {
                                        withAnimation(.default) {
                                            offSet = -minX
                                        }
                                    }
                                    return Color.clear
                                }
                                    .frame(width: 0, height: 0)
                                ,alignment: .leading
                            )
                    } else {
                        colors[index]
                    }
                    
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .overlay(
                HStack(spacing: 15) {
                    ForEach(colors.indices, id : \.self) { index in
                        Capsule()
                            .fill(Color.white)
                            .frame(width: getIndex() == index ? 20 : 7, height: 7)
                    }
                }
//                    .overlay(
//                        Capsule()
//                            .fill(Color.white)
//                            .frame(width: 20, height: 7)
//                             .offset(x: getOffset())
//                        , alignment: .leading
//                    )
                    .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
                    .padding(.bottom, 10), alignment: .bottom
            )
        
        
    }

    func getIndex() -> Int {
        let index = Int(round(Double(offSet / getWidth())))
//        print("offSet : ",  offSet)
//        print("getWidth : ",  getWidth())
//        print("index : ",  index)
//        print("=========")
        return index
    }
    
    func getOffset() -> CGFloat {
        let progress = offSet / getWidth()
        return 22 * progress
    }
}

extension View {
    func getWidth() -> CGFloat {
        return UIScreen.main.bounds.width
    }
}
