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
//    let width = 320

    var body: Component {
        Node.forEach(buttonList) { button in
            Node.div(
                .style(centerStyle),
                .button(
                    .style("""
                        width: 30%;
                        font-size: 15px;
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
