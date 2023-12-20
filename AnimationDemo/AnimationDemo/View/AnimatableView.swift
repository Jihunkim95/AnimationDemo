//
//  AnimatableView.swift
//  AnimationDemo
//
//  Created by 김지훈 on 2023/12/20.
//

import SwiftUI

struct AnimatableView: View {
    @Binding var rotation: Double
    @Binding var scale: CGFloat
    
    var body: some View {
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
    }
}

