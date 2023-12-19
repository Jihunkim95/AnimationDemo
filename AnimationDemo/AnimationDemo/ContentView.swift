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
                VStack{
                    AnimatableTextView(text: "점점 커짐", rotation: rotation, scale: scale)
                        .animation(.spring(response: 1, dampingFraction: 0.2, blendDuration: 0), value: rotation)
                    
                    AnimatableTextView(text: "지정 횟수 반복", rotation: rotation, scale: scale)
                        .animation(Animation.linear(duration: 1).repeatCount(10),value: rotation)
                    
                    AnimatableTextView(text: "무한 반복", rotation: rotation, scale: scale)
                        .animation(Animation.linear(duration: 1)             .repeatForever(autoreverses: true)
                                   ,value: rotation)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct AnimatableTextView: View {
    
    var text: String
    var rotation: Double
    var scale: CGFloat
    
    var body: some View {
        Text(text)
            .rotationEffect(.degrees(rotation))
        //점점 커질거임
            .scaleEffect(scale)
        
    }
}
