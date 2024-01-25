import VercelVapor

@main
struct App: VaporHandler {
    static func configure(app: Vapor.Application) async throws {
        app.get("hello") { req in
            req.logger.debug("Request headers: \(req.headers)")
            return "world!"
        }
    }
}