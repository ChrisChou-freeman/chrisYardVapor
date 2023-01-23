import Vapor
import Plot

func mainPage(req: Request) async -> Response {
    
    let html = HTML(
        .head(
            .title("Chris yard"),
            .link(.rel(.stylesheet), .href("/styles/pico.min.css"))
        ),
        .body(
            .h2("Countries and their capitals"),
            .table(
                .tr(.th("Country"), .th("Capital")),
                .tr(.td("Sweden"), .td("Stockholm")),
                .tr(.td("Japan"), .td("Tokyo"))
            ),
            .h2("List of ", .strong("programming languages")),
            .ul(
                .li("Swift"),
                .li("Objective-C"),
                .li("C")
            )
        )
    )
    return html.htmlResponse
}
