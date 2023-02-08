//
//  ProfileImage.swift
//  
//
//  Created by ChrisChou on 2023/2/1.
//

import Plot

struct ProfileImage: Component {
    let imageSize = 125

    var body: Component {
        Node.div(
            .div(
                .style(
                    """
                    background-image: url('/images/profile.jpg');
                    background-position: center;
                    background-size: cover;
                    height: \(imageSize)px;
                    width: \(imageSize)px;
                    border-radius: 50%;
                    """
                )
            )
        )
        .style(centerStyle)
    }
}
