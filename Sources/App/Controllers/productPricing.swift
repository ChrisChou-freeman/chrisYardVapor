//
//  productPricing.swift
//  
//
//  Created by ChrisChou on 2023/2/17.
//

import Plot
import Vapor

func productPricing(req: Request) async -> Response  {
    print(req.url.path)
    let html = HTML(
        .component(ProductHead()),
        .body(
            .component(ProductNav(req: req)),
            .main(
                .style("""
                    min-height: calc(100vh - 8rem);
                """),
                .class("container"),
                .component(ProductTitle(information: "At the cost of a Coca per month")),
                .component(ProductSubTitle(information: "Increase your productivity with organized tasks.")),
                .component(ProductPricingBox(pricingList: [
                    .init(
                        title: "Basic",
                        priceInfo: "Free",
                        linkString: "Get start",
                        link: "",
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
                        linkString: "try free for 7 days",
                        link: "",
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
