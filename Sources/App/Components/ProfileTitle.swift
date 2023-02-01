//
//  ProfileTitle.swift
//  
//
//  Created by ChrisChou on 2023/2/1.
//

import Plot

struct ProfileTitle: Component {
    var body: Component {
        Div(
            Node.h2(
                .style("margin-bottom: 0;"),
                "Chris"
            )
        )
        .style(centerStyle)
    }
}

struct ProfileSubTitle: Component {
    var body: Component {
        Div(
            Node.h6(
                .style("margin-bottom: 15px;"),
                "👋 Welcome to my yard!"
            )
        )
        .style("\(centerStyle)margin-top: 10px;")
    }
}
