//
//  AnimatableTextView.swift
//  AnimationDemo
//
//  Created by 김지훈 on 2023/12/19.
//

import SwiftUI


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

