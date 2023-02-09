//
//  File.swift
//  
//
//  Created by ChrisChou on 2023/2/8.
//

import Plot

struct ProductTitle: Component {
    var body: Component {
        Node.div(
            .h2(
                .style("margin-bottom: 0;"),
                "Organizing your tasks&ToDo list get the job done easily"
            )
        )
        .style(centerStyle)
    }
}

struct ProductSubTitle: Component {
    var body: Component {
        Node.div(
            .h6(
                .style("margin-bottom: 15px;"),
                "Native technology, faster, smaller, less memory, iCloud sync support",
                .class("Secondart")
            )
        )
        .style("\(centerStyle)margin-top: 10px;")
    }
}
