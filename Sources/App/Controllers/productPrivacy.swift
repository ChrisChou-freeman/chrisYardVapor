import Vapor
import Plot

func productPrivacy(req: Request) async -> Response {
    let html = HTML(
        .component(ProductHead()),
        .body(
            .component(ProductNav()),
            .main(
                .style("""
                    min-height: calc(100vh - 8rem);
                """),
                .class("container"),
                .component(ProductPrivacy(privacyName: "pmboard_privacy"))
            ),
            .component(ProductFooter())
        )
    )
    return html.htmlResponse
}
