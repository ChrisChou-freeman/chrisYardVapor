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
            .img(.src("/images/pmboard/main.png")),
            .style(centerStyle)
        )
    }
}
