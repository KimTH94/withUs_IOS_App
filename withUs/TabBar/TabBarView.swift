//
//  TabBarView.swift
//  UI
//
//  Created by TaeHwan Kim on 2022/01/18.
//

import SwiftUI

struct TabBarView: View {
    @Binding var selection : Int
    @Namespace private var currentTab
    
    var body: some View {
        HStack(alignment: .bottom) {
            ForEach(tabs.indices) { index in
                GeometryReader { geometry in
                    VStack(spacing : 4){
                        if selection == index {
                            Color(.blue)
                                .frame(height : 2)
                                .offset(y : -8)
                                .matchedGeometryEffect(id: "currentTab", in: currentTab)
                        }

                        
                        if tabs[selection].index1 == index && tabs[index].index1 == selection {
                            Image(systemName: tabs[index].image).frame(height : 20).rotationEffect(.degrees(25)).foregroundColor(Color(.blue))

                        }else {
                            Image(systemName: tabs[index].image).frame(height : 20).rotationEffect(.degrees(0)).foregroundColor(Color(.blue))
                        }
                        
                        Text(tabs[index].label).font(.caption2).fixedSize()
                    }
                    .frame(width: geometry.size.width / 2, height: 44, alignment: .bottom)
                    .padding(.horizontal)
                    .foregroundColor(selection == index ? Color(.label) : .secondary).onTapGesture {
                        withAnimation {
                            selection = index
                        }
                    }
                }
                .frame(height: 44, alignment: .bottom)
                }
        }
        
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(selection: Binding.constant(0)).previewLayout(.sizeThatFits )
    }
}

struct Tab {
    let image : String
    let label : String
    let index1 : Int
}

let tabs = [
    Tab(image: "house",           label: "홈",    index1: 0),
    Tab(image: "magnifyingglass", label: "검색",   index1: 1),
    Tab(image: "suit.heart",      label: "찜",     index1: 2),
    Tab(image: "message",         label: "메세지",   index1: 3),
    Tab(image: "person" ,         label: "My 메뉴", index1: 4)
]
