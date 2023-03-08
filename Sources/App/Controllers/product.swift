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
        .component(ProductHead()),
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
