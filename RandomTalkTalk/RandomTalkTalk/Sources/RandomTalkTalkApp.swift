import SwiftUI
import FirebaseCore
import FirebaseFirestore
import ComposableArchitecture

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true
    }
}

@main
struct RandomTalkTalkApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            OnboardingView(
                store: Store(
                    initialState: OnboardingFeature.State(),
                    reducer: {
                        OnboardingFeature()
                    }
                )
            )
        }
    }
}
