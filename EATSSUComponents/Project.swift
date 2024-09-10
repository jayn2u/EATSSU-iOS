import ProjectDescription

let project = Project(
    name: "EATSSUComponents",
    targets: [
        .target(
            name: "EATSSUComponents",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.EATSSUComponents",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["EATSSUComponents/Sources/**"],
            resources: ["EATSSUComponents/Resources/**"],
            dependencies: [
              .external(name: "SnapKit", condition: .none),
              .external(name: "Kingfisher", condition: .none),
            ]
        ),
    ]
)
