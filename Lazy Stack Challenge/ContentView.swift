//
//  ContentView.swift
//  Lazy Stack Challenge
//
//  Created by Zach Mommaerts on 4/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LazyVStack {
            ScrollView{
                ForEach(0...50, id: \.self){ index in
                    
                    Rectangle()
                        .fill(RadialGradient(
                            gradient:  Gradient(colors: [.orange, .yellow]), center: UnitPoint(x: 0.5, y: 0.5), startRadius: 0, endRadius: 200))
                        .frame(height: pow(1.1, CGFloat(index)))
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
