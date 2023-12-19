//
//  ToggleAnimationView.swift
//  AnimationDemo
//
//  Created by 김지훈 on 2023/12/19.
//

import SwiftUI

struct ToggleAnimationView: View {
    @Binding var visibility:Bool
    
    var body: some View {
        VStack{
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
