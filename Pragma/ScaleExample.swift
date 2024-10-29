import SwiftUI

struct ScaleExample: View {
    @State private var isOn = false
    var body: some View {
        Rectangle()
            .fill(.green)
            .scaleEffect(isOn ? 1.5 : 1)
            .frame(width: 100, height: 100)
            .animation(.easeInOut, value: isOn)
            .onTapGesture {
                isOn.toggle()
            }
    }
}

#Preview {
    ScaleExample()
        .padding(100)
}
