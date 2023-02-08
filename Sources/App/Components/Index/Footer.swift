//
//  Footer.swift
//  
//
//  Created by ChrisChou on 2023/2/7.
//

import Plot

struct Footer: Component {
    var body: Component {
        Node.footer(
            .class("container-fluid"),
            .style("""
                padding: 1rem 0;
                \(centerStyle)
            """),
            .small(
                "©️\(thisYearNumber()) Chris Chou. All Rights Reserved. • ",
                .a(
                    .class("secondary"),
                    .href("https://github.com/ChrisChou-freeman/chrisYardVapor"),
                    "Source code"
                )
            )
        )
    }
}
