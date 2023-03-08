import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        await mainPage(req: req) 
    }

    app.get("pmboard") { req async in
        await product(req: req)
    }

    app.get("pmboard", "privacy") { req async in
        await productPrivacy(req: req)
    }
}
