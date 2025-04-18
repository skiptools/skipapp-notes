import Foundation
import SkipFuse
import SkipFuseUI

let logger: Logger = Logger(subsystem: "skip.notes", category: "SkipNotes")

/// The shared top-level view for the app, loaded from the platform-specific App delegates below.
///
/// The default implementation merely loads the `ContentView` for the app and logs a message.
public struct SkipNotesRootView : View {
    public init() {
    }

    public var body: some View {
        ContentView()
            .task {
                logger.info("Skip app logs are viewable in the Xcode console for iOS; Android logs can be viewed in Studio or using adb logcat")
            }
    }
}

/// Global application delegate functions.
///
/// These functions can update a shared observable object to communicate app state changes to interested views.
/// The sender for each of these functions will be either a `UIApplication` (iOS) or `AppCompatActivity` (Android)
public final class SkipNotesAppDelegate : Sendable {
    public static let shared = SkipNotesAppDelegate()

    private init() {
    }

    public func onStart() {
        logger.debug("onStart")
    }

    public func onResume() {
        logger.debug("onResume")
    }

    public func onPause() {
        logger.debug("onPause")
    }

    public func onStop() {
        logger.debug("onStop")
    }

    public func onDestroy() {
        logger.debug("onDestroy")
    }

    public func onLowMemory() {
        logger.debug("onLowMemory")
    }
}
