import Vercel

@main
struct VercelFunction: RequestHandler {
    func onRequest(_ req: Request) async throws -> Response {
        // not a real warning, sample to show the different types of logs
        req.context.logger.warning("Houston we have a \(req.method) request")
        return .status(.ok).send("Hello, World!")
    }
}