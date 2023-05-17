import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            CoordinatorView()
                .preferredColorScheme(.dark)
                .previewInterfaceOrientation(.landscapeRight)
        }
    }
}
