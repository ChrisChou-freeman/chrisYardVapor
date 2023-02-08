//
//  File.swift
//  
//
//  Created by ChrisChou on 2023/2/8.
//

import Plot

struct ProductImage: Component {
    var body: Component {
        Node.div(
            .picture(
                .source(.srcset("/images/pmboard/main-dark.png"), .media("(prefers-color-scheme: dark)")),
                .img(.src("images/pmboard/main.png"))
            )
        )
    }
}
