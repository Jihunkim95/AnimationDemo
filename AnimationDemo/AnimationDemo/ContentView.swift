//
//  ContentView.swift
//  AnimationDemo
//
//  Created by 김지훈 on 2023/12/19.
//

import SwiftUI

struct ContentView: View {
    
    @State var rotation: Double = 0
    @State private var scale: CGFloat = 1
    @State private var redCircle = false
    
    //애니메이션 상태 바인딩
    @State private var visibility = false
    //자동애니메이션
    @State var isSpinning: Bool = true

    
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
 
            CircleAnimationView(redCircle: $redCircle)
            //실제 시뮬에서 확인
            ToggleAnimationView(visibility: $visibility)
            
            AutoAnimationView(isSpinning: $isSpinning,rotation: $rotation)

        }

    }
}

#Preview {
    ContentView()
}


