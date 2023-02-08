//
//  File.swift
//  
//
//  Created by ChrisChou on 2023/2/8.
//

import Plot

struct ProductDownload: Component {
    let spacing = 20

    var body: Component {
        Node.a(
            .img(.src("/images/download-icon.svg")),
            .href("https://apps.apple.com/app/pmboard-tasks-manger-todo/id1661513330"),
            .target(.blank),
            .style("""
            margin-top: \(spacing)px;
            margin-bottom: \(spacing)px;
            \(centerStyle)
            """)
        )
    }
}
