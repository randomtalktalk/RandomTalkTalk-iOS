import ProjectDescription

let project = Project(
    name: "RandomTalkTalk",
    targets: [
        .target(
            name: "RandomTalkTalk",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.RandomTalkTalk",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["RandomTalkTalk/Sources/**"],
            resources: ["RandomTalkTalk/Resources/**"],
            dependencies: [
                .external(name: "FirebaseFirestore"),
                .external(name: "ComposableArchitecture"),
                .external(name: "Moya"),
            ]
        ),
        .target(
            name: "RandomTalkTalkTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.RandomTalkTalkTests",
            infoPlist: .default,
            sources: ["RandomTalkTalk/Tests/**"],
            resources: [],
            dependencies: [.target(name: "RandomTalkTalk")]
        ),
    ]
)
