//
//  PageView.swift
//  PageView
//
//  Created by Timothy Dubbins on 20/09/2022.
//


import SwiftUI

public struct PageView<Content: View>: View {
    let content: () -> Content

    public var body: some View {
        GeometryReader { geo in
            ScrollView(.horizontal) {
                TabView {
                    content()
                }
                .frame(width: geo.size.width, height: geo.size.height)
                .tabViewStyle(PageTabViewStyle())
            }
        }
    }

    public init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
}
