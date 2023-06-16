//
//  File.swift
//  
//
//  Created by ChrisChou on 2023/2/1.
//

import Plot

let buttonList: [ButtonStruct] = [
    .init(
        content: "🎧 Pomodoro and Sounds(macOS app)",
        link: "https://apps.apple.com/app/deepfocus-pomodoro-sounds/id1628457656?l=en",
        newTable: true
    ),
    .init(
        content: "📒 New note app(working on it)",
        link: "/"
    ),
    .init(
        content: "✅ Task Manger(removed from app store)",
        link: "/"
    ),
]

struct ButtonStruct {
    let content: String
    let link: String
    var newTable: Bool = false
}

struct ProductList: Component {
    var body: Component {
        Node.forEach(buttonList) { button in
            Node.div(
                .style(centerStyle),
                .a(
                    .attribute(named: "role", value: "button"),
                    .style("""
                        width: 60%;
                        font-weight: bold;
                        margin-bottom: 15px;
                    """
                    ),
                    .class("secondary"),
                    .href(button.link),
                    .target(button.newTable ? .blank : .parent),
                    "\(button.content)"
                )
            )
        }
    }
}
