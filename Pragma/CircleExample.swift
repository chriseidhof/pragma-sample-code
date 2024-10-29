import SwiftUI

struct CircleExample: View {
    @State private var isOn = false

    var body: some View {
        Circle()
            .fill(isOn ? .red : .blue)
            .frame(width: isOn ? 200 : 100, height: 200)
            .frame(maxWidth: .infinity, alignment: isOn ? .leading : .trailing)
            .animation(.easeInOut, value: isOn)
            .onTapGesture {
                isOn.toggle()
            }
    }
}

#Preview {
    CircleExample()
        .padding(100)
}
