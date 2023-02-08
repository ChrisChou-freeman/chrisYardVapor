//
//  File.swift
//  
//
//  Created by ChrisChou on 2023/2/8.
//

import Plot

struct ProductNav: Component {
    var body: Component {
        Node.nav(
            .style("""
                padding: 0 1rem;
            """),
            .ul(
                .li(.img(.src("/favicon-pmboard.ico")),
                    .a(.strong("PMBoard"), .href("/pmboard"), .class("secondary"))
                )
            ),
            .ul(
                .li(
                    .a(.small("Pricing"), .href("#"), .class("secondary"))
                ),
                .li(
                    .a(.small("Developer"), .href("/"), .class("secondary"))
                )
            )
        )
    }
}
