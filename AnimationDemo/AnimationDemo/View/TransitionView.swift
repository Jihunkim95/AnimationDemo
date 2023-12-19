//
//  TransitionView.swift
//  AnimationDemo
//
//  Created by 김지훈 on 2023/12/19.
//

import SwiftUI
//SwiftUI 전환
struct TransitionView: View {
    @Binding var isButtonVisible: Bool
    var body: some View {
        VStack{
            Toggle(isOn: $isButtonVisible.animation(.linear(duration: 2))){
                Text("Show/Hide Button")
            }
            .padding()
            
            if isButtonVisible{
                Button{
                    
                }label: {
                    Text("Example Button")
                }
                .font(.largeTitle)
                //SwiftUI 전환 핵심
//                .transition(.slide)
//                .transition(.move(edge: .top))
//                .transition(.fadeAndMove)
                .transition(.asymmetric(insertion: .scale, removal: .slide))
            }
            
        }
    }
}

//전환 결합하기 및 extension으로 메소드 빼기
extension AnyTransition{
    static var fadeAndMove: AnyTransition{
        AnyTransition.opacity.combined(with: .move(edge: .top))
    }
    
}
