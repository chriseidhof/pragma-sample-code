import SwiftUI

struct TransitionExample: View {
    @State var isOn = false
    var body: some View {
        VStack {
            Capsule()
                .fill(.blue)
                .frame(width: 100, height: 32)
            if isOn {
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100)
                    .transition(.scale.combined(with: .opacity))
            }
        }
        .animation(.easeInOut, value: isOn)
        .onTapGesture {
            isOn.toggle()
        }
    }
}

#Preview {
    TransitionExample()
        .padding(100)
}
