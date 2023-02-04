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
        link: "https://apps.apple.com/app/deepfocus-pomodoro-sounds/id1628457656?l=en"
    ),
    .init(
        content: "✅ Task Manger(macOS app)",
        link: "https://apps.apple.com/app/pmboard-tasks-manger-todo/id1661513330?l=en&mt=12"
    )
]

struct ButtonStruct {
    let content: String
    let link: String
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
                    "\(button.content)"
                )
            )
        }
    }
}
