//
//  NavigationBar.swift
//  UI
//
//  Created by TaeHwan Kim on 2022/01/19.
//

import SwiftUI

struct Navigation: View {
    var title : String = ""
    
    var body: some View {
        ZStack {
//            Color.clear.background(.ultraThinMaterial).blur(radius: 10)
            Color.clear.blur(radius: 10)
            Text(title).font(.largeTitle.weight(.bold)).frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 20).foregroundColor(
                Color.blue)
        }
        .frame(height: 50).padding(.top, -5)
        .frame(maxWidth: .infinity, alignment: .top)
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
            .previewLayout(.sizeThatFits)
    }
}
