//
//  menu1View.swift
//  UI
//
//  Created by TaeHwan Kim on 2022/01/19.
//

import SwiftUI

struct menu1View: View {
    var body: some View {
        
        ScrollView {
            VStack {
                ForEach(1..<100) {
                    Text("Item \($0)") //$표시 필수
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }.background(.blue)
    }
}

struct menu1View_Previews: PreviewProvider {
    static var previews: some View {
        menu1View()
    }
}
