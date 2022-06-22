//
//  infoView.swift
//  UI
//
//  Created by TaeHwan Kim on 2022/01/20.
//

import SwiftUI

struct ImageSliderView: View {
    
    @State var selectIndex = 0
    
    var colors : [Color] = [.red, .blue, .yellow, .purple]
    
    var body: some View {
        
        TabView(selection: $selectIndex) {
            ForEach(colors.indices, id: \.self) { index in
                colors[index]
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .overlay(
            HStack(spacing: 15) {
                ForEach(colors.indices, id : \.self) { index in
                    Capsule()
                        .fill(index == selectIndex ? Color.black : Color.gray)
                        .frame(width: 7, height: 7)
                        
                }
            }
                .padding(.bottom, 30), alignment: .bottom)
        
    }
}

struct infoView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSliderView()
    }
}
