//
//  File.swift
//  
//
//  Created by ChrisChou on 2023/2/8.
//

import Plot
import Vapor

struct ProductNav: Component {
    let req: Request

    var body: Component {
        Node.nav(
            .style("""
                padding: 0 1rem;
            """),
            .ul(
                .li(
                    .img(.src("/favicon-pmboard.ico")),
                    .a(
                        .strong("PMBoard"),
                        .href("/pmboard"),
                        .class("secondary"),
                        .style("""
                            padding-left: 20px;
                        """)
                    )
                )
            ),
            .ul(
                // .li(
                //     .a(.small("Pricing"), .href("/pmboard/pricing"), .class(isPricingPath ? "secondary" : ""))
                // ),
                .li(
                    .a(.small("Developer"), .href("/"), .class(""))
                )
            )
        )
    }

    var isPricingPath: Bool {
        req.url.path == "/pmboard/pricing"
    }
}
