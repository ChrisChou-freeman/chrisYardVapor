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
            .init(name: "from China, GanZhou", icon: "🇨🇳", link: "", isLink: false),
            .init(name: "full stack developer", icon: "👨‍💻", link: "", isLink: false),
            .init(name: "freelancer", icon: "👐", link: "", isLink: false),
            .init(name: "nearly homeless", icon: "🥹", link: "", isLink: false)
        ]
    ),
    .init(
        name: "Contact Me",
        subList: [
            .init(name: "Email", icon: "📮", link: "mailto:bornbefreesolo@hotmail.com", isLink: true),
            .init(name: "Twitter", icon: "🐦", link: "https://twitter.com/ChrisWantBeFree", isLink: true),
        ]
    ),
    .init(
        name: "Other",
        subList: [
            .init(name: "Github", icon: "👾", link: "https://github.com/ChrisChou-freeman", isLink: true),
            .init(name: "Product Hunt", icon: "🛒", link: "https://www.producthunt.com/@chrischoufreeman", isLink: true),
            .init(name: "Blog", icon: "📒", link: "https://medium.com/@ChrisChouFreeMan", isLink: true)
        ]
    )
]

struct InfoTopic: Component {
    let spaceToTop = 220

    var body: Component {
        Node.div(
            .forEach(infoTopicLists, { topic in
                .div(
                    .h3(
                        .style("margin-bottom: 25px;"),
                        "\(topic.name)"
                    ),
                    .section(
                        .forEach(topic.subList, { subTitle in
                            .component(InfoLink(iconNameLink: subTitle))
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

struct InfoLink: Component {
    let iconNameLink: IconNameLink

    var body: Component {
        if iconNameLink.isLink {
            return linkItem
        } else {
            return noneLinkItem
        }
    }

    var linkItem: Component {
        Node.a(
            .style("margin-bottom: 10px;display:block;"),
            "\(iconNameLink.icon)\(iconNameLink.name)",
            .href(iconNameLink.link),
            .target(.blank)
        )
    }

    var noneLinkItem: Component {
        Node.div(
            .style("margin-bottom: 10px;"),
            "\(iconNameLink.icon)\(iconNameLink.name)"
        )
    }
}
