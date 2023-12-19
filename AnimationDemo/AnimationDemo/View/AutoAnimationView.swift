//
//  AutoAnimationView.swift
//  AnimationDemo
//
//  Created by 김지훈 on 2023/12/19.
//

import SwiftUI

struct AutoAnimationView: View {
    //자동애니메이션
    @Binding var isSpinning: Bool
    @Binding var rotation: Double
    
    var body: some View {
        ZStack{
            Text("애니메이션 자동 시작")
            Circle()
                .stroke(lineWidth: 2.0)
                .foregroundColor(Color.blue)
                .frame(width: 200,height: 200)
            
            Image(systemName: "forward.fill")
                .font(.largeTitle)
                .offset(y: -105)
                .rotationEffect(.degrees(rotation))
                .animation(Animation.linear(duration: 5).repeatForever(autoreverses: false),value: rotation)
        }
        .onAppear(){
            self.isSpinning.toggle()
            rotation = isSpinning ? 0 : 360
        }
    }
}

