import SwiftUI

struct ShakeModifier: ViewModifier, Animatable {
    var numberOfTaps: CGFloat
    var animatableData: CGFloat {
        get { numberOfTaps }
        set { numberOfTaps = newValue }
    }

    func body(content: Content) -> some View {
        let _ = print(numberOfTaps)
        content
            .offset(x: sin(numberOfTaps * 2 * .pi) * 30)
    }
}

struct ShakeExample: View {
    @State var numberOfTaps = 0
    var body: some View {
        Circle()
            .fill(.blue)
            .frame(width: 100, height: 100)
            .modifier(ShakeModifier(numberOfTaps: CGFloat(numberOfTaps)))
            .animation(.linear, value: numberOfTaps)
            .onTapGesture {
                numberOfTaps += 1
            }
    }
}

#Preview {
    ShakeExample()
        .padding(100)
}
