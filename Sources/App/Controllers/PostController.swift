import Vapor
import GraphQLKit

final class PostController {
    func fetchPosts(request: Request, _: NoArguments) throws -> [Post] {
        return posts
    }

    private var posts = [
        Post(id: 1, title: "My first post")
    ]
}
