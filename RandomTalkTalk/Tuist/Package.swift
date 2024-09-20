// swift-tools-version: 5.9
import PackageDescription

#if TUIST
    import ProjectDescription

    let packageSettings = PackageSettings(
        // Customize the product types for specific package product
        // Default is .staticFramework
        // productTypes: ["Alamofire": .framework,] 
        productTypes: [
            "firebase-ios-sdk": .framework,
            "ComposableArchitecture": .framework,
            "Moya": .framework
        ]
    )
#endif

let package = Package(
    name: "RandomTalkTalk",
    dependencies: [
        // Add your own dependencies here:
//         .package(url: "https://github.com/Alamofire/Alamofire", from: "5.0.0"),
        // You can read more about dependencies here: https://docs.tuist.io/documentation/tuist/dependencies
        
         .package(url: "https://github.com/firebase/firebase-ios-sdk.git", exact: "11.2.0"),
         .package(url: "https://github.com/pointfreeco/swift-composable-architecture", exact: "1.15.0"),
         .package(url: "https://github.com/Moya/Moya.git", exact: "15.0.0"),
    ]
)
