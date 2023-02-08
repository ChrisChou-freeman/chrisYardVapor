//
//  pmboard.swift
//  
//
//  Created by ChrisChou on 2023/2/8.
//

import Vapor
import Plot

func pmboard(req: Request) async -> Response {
    let html = HTML(
//        .attribute(named: "data-theme", value: "light"),
//        .style("""
//            background-color: #f2f2f2;
//        """),
        .head(
            .title("PMBoard"),
            .link(.rel(.stylesheet), .href("/styles/pico.min.css")),
            .favicon("/favicon-pmboard.ico")
//            .meta(.name("theme-color"), .content("#222222"))
        ),
        .body(
            .component(ProductNav()),
            .main(
                .style("""
                    min-height: calc(100vh - 8rem);
                """),
                .class("container"),
                .component(ProductTitle()),
                .component(ProductSubTitle()),
                .component(ProductDownload()),
                .component(ProductImage())
            ),
            .component(ProductFooter())
        )
    )
    return html.htmlResponse
}
