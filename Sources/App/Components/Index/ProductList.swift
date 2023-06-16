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
        newTable: true,
        disable: false
    ),
    .init(
        content: "📒 New note app(working on it)",
        link: "/",
        disable: false
    ),
    .init(
        content: "✅ Task Manger(removed from app store)",
        link: "/",
        disable: true
    ),
]

struct ButtonStruct {
    let content: String
    let link: String
    var newTable: Bool = false
    let disable: Bool
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
                        \(button.disable ? "text-decoration: line-through" : "")
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
