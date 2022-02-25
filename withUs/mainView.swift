//
//  mainView.swift
//  UI
//
//  Created by TaeHwan Kim on 2022/01/26.
//

import SwiftUI

struct mainView: View {
    @State private var selection = 0
    
    var body: some View {
        VStack {
            Navigation(title: "withUs")

            VStack {
                TabView(selection: $selection) {
                    menu1View().tag(0)
                    menu2View().tag(1)
                    Text("메뉴3").tag(2)
                    Text("메뉴4").tag(3)
                    Text("메뉴5").tag(4)
                }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))

                TabBarView(selection: $selection )
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}
