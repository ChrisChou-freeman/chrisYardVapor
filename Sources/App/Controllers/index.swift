import Vapor
import Plot

let imageSize = 122

func mainPage(req: Request) async -> Response {
    let html = HTML(
        .head(
            .title("Chris yard"),
            .link(.rel(.stylesheet), .href("/styles/pico.min.css")),
            .favicon("/favicon.ico")
        ),
        .body(
            .main(
                .style("min-height: calc(100vh - 3rem);"),
                .class("container"),
                .component(ProfileImage()),
                .component(ProfileTitle()),
                .component(ProfileSubTitle()),
                .component(ProductList()),
                .component(InfoTopic())
            ),
            .component(Footer())
        )
    )
    return html.htmlResponse
}
