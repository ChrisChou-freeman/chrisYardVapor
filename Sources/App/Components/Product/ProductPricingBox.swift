//
//  File.swift
//  
//
//  Created by ChrisChou on 2023/3/9.
//

import Plot

struct PricingInfo {
    let title: String
    let priceInfo: String
    let linkString: String
    let link: String
    let features: [String]
}

struct ProductPricingBox: Component {
    let pricingList: [PricingInfo]

    var body: Component {
        Node.div(
            .style("""
                display: grid;
                grid-template-columns: 1fr 1fr;
                margin: 20px;
            """),
            .forEach(pricingList, { pricingInfo in
                .div(
                    .style("""
                        border-radius: 10px;
                        border: 1px solid rgb(157, 140, 140);
                        padding: 20px;
                        margin-right: 30px;
                        margin-top: 30px;
                        box-shadow: 2px 2px 2px;
                    """),
                    .h6("\(pricingInfo.title)"),
                    .h3("\(pricingInfo.priceInfo)"),
                    .a(
                        "\(pricingInfo.linkString)",
                        .attribute(named: "role", value: "button"),
                        .href(pricingInfo.link),
                        .class("secondary"),
                        .style("""
                            margin-bottom: 30px;
                        """)
                    ),
                    .h6(
                        "Features",
                        .style("margin-bottom: 10px;")
                    ),
                    .div(
                        .style("""
                            padding: 2px;
                        """),
                        .forEach(pricingInfo.features, { item in
                            .p(
                                "\(item)",
                                .style("""
                                    margin-bottom: 5px;
                                    font-size: 18px;
                                """)
                            )
                        })
                    )
                )
            })
        )
    }
}
