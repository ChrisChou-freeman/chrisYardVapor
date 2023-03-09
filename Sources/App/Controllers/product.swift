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
            .component(ProductNav(req: req)),
            .main(
                .style("""
                    min-height: calc(100vh - 8rem);
                """),
                .class("container"),
                .component(ProductTitle(information: "Organizing your tasks&ToDo list get the job done easily")),
                .component(ProductSubTitle(information: "Native technology, faster, smaller, less memory, iCloud sync support")),
                .component(ProductDownload()),
                .component(ProductImage()),
                .component(ProductFeatures())
            ),
            .component(ProductFooter(req: req))
        )
    )
    return html.htmlResponse
}
