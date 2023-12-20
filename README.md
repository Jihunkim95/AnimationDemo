## Ch41. SwiftUI 애니메이션과 전환
    - 암묵적 애니메이션
        - Text.animation(…)
            - .linear, .easeOut, .easeIn, .easeInOut
    - 애니메이션 반복
        - reapeatForever()
    - 명시적 애니메이션
        - withAnimation()클로저 내부에서 선언되면 해당 메소드는 제한
        - withAnimation(.linear (duration: 2))
    - 애니메이션 상태바인딩
        - bool타입에 @State를 선언하여 Toggole과 함께활용
    - 자동애니메이션
        - reapeatForever()를 활용하여 자동화 된것처럼 보임
    - SwiftUI 전환
        - transition(.slide)
        - .slide, scale 등등
        - extension을 이용해서 확장하여 사용가능
    - 색종이 애니메이션 라이브러리
        - https://github.com/simibac/ConfettiSwiftUI
    - 애플 개발자 튜토리얼
        - [https://developer.apple.com/tutorials/swiftui/animating-views-and-transitions](https://colab.research.google.com/corgiredirector?site=https%3A%2F%2Fdeveloper.apple.com%2Ftutorials%2Fswiftui%2Fanimating-views-and-transitions)
