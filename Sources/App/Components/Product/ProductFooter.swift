//
//  File.swift
//  
//
//  Created by ChrisChou on 2023/2/8.
//

import Plot

struct ProductFooter: Component {
    var body: Component {
        Node.footer(
            .class("container"),
            .style("""
                padding: 1rem 0;
                \(centerStyle)
            """),
            .small(
                "©️\(thisYearNumber()) PMBoard • ",
                .a(
                    .style("text-decoration: none;"),
                    .class("secondary"),
                    .href("/"),
                    "Contact • "
                ),
                .a(
                    .style("text-decoration: none;"),
                    .class("secondary"),
                    .href("/pmboard/privacy"),
                    "Privacy • "
                ),
                .a(
                    .style("text-decoration: none;"),
                    .class("secondary"),
                    .href("https://github.com/ChrisChou-freeman/PMBoardSupport/issues"),
                    "Github Issue"
                )
            )
        )
    }
}
