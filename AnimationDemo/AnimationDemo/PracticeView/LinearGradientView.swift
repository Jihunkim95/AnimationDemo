//
//  LinearGradientView.swift
//  AnimationDemo
//
//  Created by 김지훈 on 2023/12/20.
//


import SwiftUI

struct LinearGradientView: View {
    @State var animateGradient = false
    @State var rotation: Double = 0
    
    let images = ["기본", "점프"]
    @State var currentIndex = 0
    @State var yOffset: CGFloat = 0
    //카운트 안세지는 버그있음 껐다 켜야함..
    @State var count1 = 0
    
    var body: some View {
        ZStack {
            backgroundGradient
            jumpingText
            spinningEmoji
            imageTapView
        }
        .onAppear {
            startAnimations()
        }
        
    }
    
    // Background Gradient View
    var backgroundGradient: some View {
        LinearGradient(colors: [Color(red: 195 / 255.0, green: 237 / 255.0, blue: 232 / 255.0),
                                Color(red: 236 / 255.0, green: 246 / 255.0, blue: 238 / 255.0),
                                Color(red: 239 / 255.0, green: 207 / 255.0, blue: 246 / 255.0)],
                       startPoint: animateGradient ? .topLeading : .bottomLeading,
                       endPoint: animateGradient ? .bottomTrailing : .topTrailing)
        .ignoresSafeArea()
        .onAppear {
            withAnimation(.linear(duration: 3).repeatForever(autoreverses: true)) {
                animateGradient.toggle()
            }
        }
    }
    
    // Jumping Text View
    var jumpingText: some View {
        Text("Jump! Jump!")
            .font(.system(size: 50, weight: .bold, design: .rounded))
            .foregroundStyle(.brown)
            .offset(y: -280)
    }
    
    // Spinning Emoji View
    var spinningEmoji: some View {
        Text("🍭")
            .font(.system(size: 50))
            .offset(y: -120)
            .rotationEffect(.degrees(rotation))
        
    }
    
    // Image Tap View
    var imageTapView: some View {
        VStack {
            
            Image(images[currentIndex])
                .resizable()
                .frame(width: 100, height: 120)
                .offset(y: yOffset)
                .scaledToFit()
                .onTapGesture {
                    updateImage()
                }
            
            
            
            Text("Count: \(count1)")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundStyle(.brown)
        }
    }
    
    // Functions to control behavior
    func startAnimations() {
        withAnimation(Animation.linear(duration: 7).repeatForever(autoreverses: false)) {
            rotation = 360
        }
    }
    
    
    func updateImage() {
        currentIndex = (currentIndex + 1) % images.count
        yOffset = currentIndex % 2 == 0 ? 0 : -20
        count1 = currentIndex % 2 == 0 ? count1 : count1 + 1
    }
}
