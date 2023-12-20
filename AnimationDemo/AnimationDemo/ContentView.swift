//
//  ContentView.swift
//  AnimationDemo
//
//  Created by 김지훈 on 2023/12/19.
//

import SwiftUI

struct ContentView: View {
    
//    @State var rotation: Double = 0
//    @State var scale: CGFloat = 1
//    @State var redCircle = false
//    
//    //애니메이션 상태 바인딩
//    @State private var visibility = false
//    //자동애니메이션
//    @State var isSpinning: Bool = true
//    
//    //SwiftUI 전환
//    @State private var isButtonVisible: Bool = true
    
    var body: some View {
        //        ScrollView{
                    VStack {
//                        AnimatableView(rotation: $rotation, scale: $scale)
//        
//                        //
//                        CircleAnimationView(redCircle: $redCircle)
//                        //실제 시뮬에서 확인
//                        ToggleAnimationView(visibility: $visibility)
//        
//                        AutoAnimationView(isSpinning: $isSpinning,rotation: $rotation)
//        
//                        TransitionView(isButtonVisible: $isButtonVisible)
//                        SimplePhaseAnimatorView()
//                        PhaseAnimatorView()
//                        KeyframeAnimatorView()
//                        AnimatedSymbolEffectView()
        
//        AniNavigationMenuView()
        
        LinearGradientView()
        
                    }
        //        }
        
        
    }
}

#Preview {
    ContentView()
}


