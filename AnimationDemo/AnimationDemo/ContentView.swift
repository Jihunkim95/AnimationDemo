//
//  ContentView.swift
//  AnimationDemo
//
//  Created by 김지훈 on 2023/12/19.
//

import SwiftUI

struct ContentView: View {
    
    @State private var rotation: Double = 0
    @State private var scale: CGFloat = 1
    
    var body: some View {
        VStack {
            Button{
                self.rotation = (self.rotation < 360 ? self.rotation + 60 : 0)
                self.scale = (self.scale < 2.8 ? self.scale + 0.3 : 1)
            }label: {
                Text("Click to animate")
                
                    .rotationEffect(.degrees(rotation))
                    .animation(.easeIn(duration: 1), value: rotation)
                //점점 커질거임
                    .scaleEffect(scale)

            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
