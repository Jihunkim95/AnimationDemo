//
//  CircleAnimationView.swift
//  AnimationDemo
//
//  Created by 김지훈 on 2023/12/19.
//

import SwiftUI

struct CircleAnimationView: View {
    @Binding var redCircle:Bool
    
    var body: some View {
        Circle()
            .fill(redCircle ? .red : .blue)
            .frame(width: 100,height: 100)
            .onTapGesture {
                withAnimation{
                    redCircle.toggle()
                }
            }
    }
}


