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
    @State private var redCircle = false
    
    //애니메이션 상태 바인딩
    @State private var visibility = false
    
    var body: some View {
        VStack {
            Button{
                withAnimation(.linear (duration: 2)){
                    self.rotation = (self.rotation < 360 ? self.rotation + 60 : 0)

                }
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
                    
                    AnimatableTextView(text: "명시적 애니메이션", rotation: rotation, scale: scale)
                }
            }
            Circle()
                .fill(redCircle ? .red : .blue)
                .frame(width: 200,height: 200)
                .onTapGesture {
                    withAnimation{
                        redCircle.toggle()
                    }
                }
            //실제 시뮬에서 확인
            Toggle(isOn: $visibility.animation(.linear(duration: 5))){
                Text("Toggle Text Views 실제 시뮬에서 확인")
            }
            .padding()
            
            if visibility{
                Text("Hello Word!")
            }else{
                Text("Goodbye World!")
            }
        }

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
            .padding()
        
    }
}
