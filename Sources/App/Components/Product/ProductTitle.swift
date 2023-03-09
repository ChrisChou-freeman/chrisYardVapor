//
//  File.swift
//  
//
//  Created by ChrisChou on 2023/2/8.
//

import Plot

struct ProductTitle: Component {
    let information: String

    var body: Component {
        Node.div(
            .h2(
                .style("margin-bottom: 0;"),
                "\(information)"
            )
        )
        .style(centerStyle)
    }
}

struct ProductSubTitle: Component {
    let information: String
    
    var body: Component {
        Node.div(
            .h6(
                .style("margin-bottom: 15px;"),
                "\(information)",
                .class("Secondart")
            )
        )
        .style("\(centerStyle)margin-top: 10px;")
    }
}
