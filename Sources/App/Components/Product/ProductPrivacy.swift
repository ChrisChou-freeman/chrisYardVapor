import Plot
import Ink
import Vapor

struct ProductPrivacy: Component {
    let privacyName: String
    
    var body: Component {
        Node<String>.raw(getMarkDownText)
    }

    var getMarkDownText: String {
        guard let filetUrl = Bundle.module.url(forResource: privacyName, withExtension: "md", subdirectory: "Resources") else {
            return ""
        }
        if let data = try? Data(contentsOf: filetUrl) {
            let mdString = String(decoding: data, as: UTF8.self)
            let parser = MarkdownParser()
            return parser.html(from: mdString)
        }
        return ""
    }
}
