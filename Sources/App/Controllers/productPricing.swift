//
//  productPricing.swift
//  
//
//  Created by ChrisChou on 2023/2/17.
//

import Plot
import Vapor

func productPricing(req: Request) async -> Response  {
    let html = HTML(
        .component(ProductHead()),
        .body(
            .component(ProductNav(req: req)),
            .main(
                .style("""
                    min-height: calc(100vh - 8rem);
                """),
                .class("container"),
                .component(ProductTitle(information: "At the cost of a can of soda per month")),
                .component(ProductSubTitle(information: "Increase your productivity with organized tasks.")),
                .component(ProductPricingBox(pricingList: [
                    .init(
                        title: "Basic",
                        priceInfo: "Free",
                        linkString: "Get start",
                        link: "https://apps.apple.com/app/pmboard-tasks-manger-todo/id1661513330",
                        features: [
                            "* Creat 2 projects",
                            "* All basic task manage function",
                            "* iCloud sync mutiple devices",
                            "* No ads, No sign-up"
                        ]
                    ),
                    .init(
                        title: "Upgrade",
                        priceInfo: "0.99$ / month",
                        linkString: "Frist 7 days free",
                        link: "https://apps.apple.com/app/pmboard-tasks-manger-todo/id1661513330",
                        features: [
                            "* No limit to create projects",
                            "* organize task with folders",
                            "* All basic task manage function with calendar sync",
                            "* iCloud sync mutiple devices",
                            "* No ads, No sign-up",
                        ]
                    )
                ]))
            ),
            .component(ProductFooter(req: req))
        )
    )
    return html.htmlResponse
}
