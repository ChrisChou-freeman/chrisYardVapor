//
//  product.swift
//  
//
//  Created by ChrisChou on 2023/2/8.
//

import Vapor
import Plot

func product(req: Request) async -> Response {
    let html = HTML(
        .head(
            .title("PMBoard"),
            .meta(.name("description"), .content("PMBoard macOS app website")),
            .meta(
                .name("keywords"),
                .content("Project manager, Task manager, To-do list, To do list, task list, PMBoard")
            ),
            .link(.rel(.stylesheet), .href("/styles/pico.min.css")),
            .favicon("/favicon-pmboard.ico"),
            .style("""
                .round-img {
                    border-radius: 10px;
                    margin-bottom: 15px;
                }
            """)
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
                .component(ProductImage()),
                .component(ProductFeatures())
            ),
            .component(ProductFooter())
        )
    )
    return html.htmlResponse
}
