import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        await mainPage(req: req) 
    }
}
