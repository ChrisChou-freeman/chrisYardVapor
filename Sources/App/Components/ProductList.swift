//
//  File.swift
//  
//
//  Created by ChrisChou on 2023/2/1.
//

import Plot

let buttonList: [String] = [
   "🎧 Pomodoro and Sounds(macOS app)",
    "✅ Task Manger(macOS app)"
]

struct ProductList: Component {

    var body: Component {
        Node.forEach(buttonList) { button in
            Node.div(
                .style(centerStyle),
                .button(
                    .style("""
                        width: 60%;
                        font-weight: bold;
                    """
                    ),
                    .class("secondary"),
                    "\(button)"
                )
            )
        }
    }
}
