import Plot

struct ProductHead: Component {
    var body: Component {
        Node.head(
            .title("PMBoard"),
            .meta(.name("description"), .content("PMBoard macOS app website")),
            .meta(
                .name("keywords"),
                .content("Project manager, Task manager, To-do list, To do list, task list, PMBoard")
            ),
            .link(.rel(.stylesheet), .href("/styles/pico.min.css")),
            .favicon("/favicon-pmboard.ico"),
            .style("""
                .round-img {
                    border-radius: 10px;
                    margin-bottom: 15px;
                }
            """)
        )
    } 
}
