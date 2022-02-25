//
//  ContentView.swift
//  UI
//
//  Created by TaeHwan Kim on 2022/01/18.
//

import SwiftUI

struct ContentView: View {
    @State private var loginYn : Bool = UserDefaults.standard.bool(forKey: "loginYn")
    //@State private var loginYn : Bool = true
    

    var body: some View {
        let _ = print("nil ==> ", loginYn)
        if(loginYn) {
            mainView()
//            VStack {
//                NavigationView(title: "withUs")
//
//                VStack {
//                    TabView(selection: $selection) {
//                        menu1View().tag(0)
//                        menu2View().tag(1)
//                        Text("메뉴3").tag(2)
//                        Text("메뉴4").tag(3)
//                        Text("메뉴5").tag(4)
//                    }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//
//                    //Divider()
//                    TabBarView(selection: $selection )
//                }
//            }
        } else {
            JoinView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
