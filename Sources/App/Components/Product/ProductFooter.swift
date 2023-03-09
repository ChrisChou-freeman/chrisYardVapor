//
//  File.swift
//  
//
//  Created by ChrisChou on 2023/2/8.
//

import Plot
import Vapor

struct ProductFooter: Component {
    let req: Request
    
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
                    .href("/"),
                    "Contact • "
                ),
                .a(
                    .style("text-decoration: none;"),
                    .href("/pmboard/privacy"),
                    .class(isPrivacyPath ? "secondary" : ""),
                    "Privacy • "
                ),
                .a(
                    .style("text-decoration: none;"),
                    .href("https://github.com/ChrisChou-freeman/PMBoardSupport/issues"),
                    "Github Issue"
                )
            )
        )
    }

    var isPrivacyPath: Bool {
        req.url.path == "/pmboard/privacy"
    }
}
