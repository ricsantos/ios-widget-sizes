import SwiftUI

@main
struct ProbeApp: App {
    var body: some Scene {
        WindowGroup {
            VStack(spacing: 12) {
                Text("Widget Size Probe")
                    .font(.headline)
                Text("Add the Size Probe widget to the Home Screen or Lock Screen. Each widget shows its size in points.")
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
            }
            .padding()
        }
    }
}
