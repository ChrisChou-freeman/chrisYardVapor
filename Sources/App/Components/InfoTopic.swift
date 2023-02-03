//
//  InfoTopic.swift
//  
//
//  Created by ChrisChou on 2023/2/3.
//

import Plot

struct IconNameLink {
    let name: String
    let icon: String
    let link: String
    let isLink: Bool
}

struct InfoTopicList {
    let name: String
    let subList: [IconNameLink]
}

let infoTopicLists: [InfoTopicList] = [
    .init(
        name: "About Me",
        subList: [
            .init(name: "male, \(myAge(bornYear: 1995))", icon: "👨", link: "", isLink: false),
            .init(name: "from China GanZhou", icon: "🇨🇳", link: "", isLink: false),
            .init(name: "freelancer(nearly homeless)", icon: "😿", link: "", isLink: false),
            .init(name: "full stack developer", icon: "👨‍💻", link: "", isLink: false)
        ]
    ),
    .init(
        name: "Find Me",
        subList: [
            .init(name: "Email", icon: "📮", link: "mailto:ChrisChouFreeMan@hotmail.com", isLink: true),
            .init(name: "Twitter", icon: "🐦", link: "https://twitter.com/ChrisWantBeFree", isLink: true),
        ]
    ),
    .init(
        name: "Other",
        subList: [
            .init(name: "Github", icon: "👾", link: "https://github.com/ChrisChou-freeman", isLink: true),
            .init(name: "Product Hunt", icon: "🛒", link: "https://www.producthunt.com/@chrischoufreeman", isLink: true)
        ]
    )
]

struct InfoTopic: Component {
    let spaceToTop = 230

    var body: Component {
        Node.div(
            .forEach(infoTopicLists, { topic in
                .div(
                    .h2(
                        .style("margin-bottom: 30px;"),
                        "\(topic.name)"
                    ),
                    .section(
                        .forEach(topic.subList, { subTitle in
                            .div("\(subTitle.icon)\(subTitle.name)")
                        })
                    )
                )
            })
        )
        .style("""
            display: flex;
            justify-content: space-evenly;
            justify-items: center;
            margin-top: \(spaceToTop)px;
        """)
    }
}
