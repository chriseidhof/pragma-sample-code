import SwiftUI

struct ToggleExample: View {
    @State private var isOn = false

    var body: some View {
        Capsule()
            .fill(isOn ? .green : Color(white: 0.2))
            .frame(width: 180, height: 100)
            .overlay(alignment: isOn ? .trailing : .leading) {
                Circle()
                    .fill(.white)
                    .padding(4)
            }
            .animation(.easeInOut, value: isOn)
            .onTapGesture {
                isOn.toggle()
            }
    }
}

#Preview {
    ToggleExample()
        .padding(100)
}
