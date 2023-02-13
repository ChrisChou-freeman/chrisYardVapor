//
//  ProductFeatures.swift
//  
//
//  Created by ChrisChou on 2023/2/9.
//

import Plot

struct FeatureStruct {
    let title: String
    let content: String
    let hasImage: Bool = false
    let imagePath: String
}

let features: [FeatureStruct] = [
    .init(
        title: "Key map",
        content: "Shortcut keys cover basic operations, more efficient and convenient",
        imagePath: "/images/pmboard/feature1.png"
    ),
    .init(
        title: "Background change",
        content: "Contains a variety of background images, which can be change at any time",
        imagePath: "/images/pmboard/feature2.png"
    ),
    .init(
        title: "Sync to calendar",
        content: "Sync your task to calendar. include note, reminder time, calendar recurring event",
        imagePath: "/images/pmboard/feature3.png"
    ),
    .init(
        title: "Organizing with folder",
        content: "Organized, make your project clear, and find quickly",
        imagePath: "/images/pmboard/feature4.png"
    ),
    .init(
        title: "Record your ideas anytime",
        content: "App is light, start fast, run fast, support offline. so you can write down your ideal instantly before you forget it",
        imagePath: "/images/pmboard/feature5.png"
    ),
    .init(
        title: "Multi-platform support",
        content: "The iPhone version is under development, It must be convenient to record your ideas anytime, anywhere, right? so there must be a mobile version.",
        imagePath: "/images/pmboard/feature6.png"
    )
]

struct ProductFeatures: Component {
    var body: Component {
        Node.div(
            .style("""
                display: grid;
                grid-template-columns: 1fr 1fr 1fr;
            """),
            .forEach(features, { feature in
                .div(
                    .style("margin-bottom: 20px;margin-right: 30px;"),
                    .img(.src(feature.imagePath), .class("round-img")),
                    .h6("\(feature.title)"),
                    .p("\(feature.content)")
                )
            })
        )
    }
}
