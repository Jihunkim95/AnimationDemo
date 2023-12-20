//
//  AnimatedSymbolEffectView.swift
//  AnimationDemo
//
//  Created by 김지훈 on 2023/12/20.
//

import SwiftUI

struct AnimatedSymbolEffectView: View {
    var body: some View {
        BounceAniSFView()
        ContentTrasitionAnimationView()
    }
}

struct BounceAniSFView: View {
    @State private var animate = false

    var body: some View {
        Image(systemName: "ellipsis.message")
            .font(.system(size: 50))
            .symbolRenderingMode(.palette)
            .foregroundStyle(.purple, .gray)
            //
            .symbolEffect(.bounce, options: .repeat(1) .speed(1.0), value: animate)
            .onTapGesture {
                animate.toggle()
            }
        
    }
}

// 콘텐츠 전환 및 애니메이션 교체
struct ContentTrasitionAnimationView: View {

    @State private var animate = false

    var body: some View {
        Image(systemName: animate ? "checkmark.circle" : "touchid")
            .font(.system(size: 100))
            .symbolRenderingMode(.palette)
            .foregroundStyle(.purple, .gray)
            // options: repeat(특정 횟수 만큼 반복), speed(애니메이션 속도 제어)
            .symbolEffect(.bounce, options: .speed(1.5), value: animate)
            .contentTransition(.symbolEffect(.replace))
            .onTapGesture {
                animate.toggle()
            }
    }
}

