import Vapor
import GraphQLKit

final class PostController {
    func fetchPosts(request: Request, _: NoArguments) -> [Post] {
        return posts
    }

    private lazy var posts = [
        Post(
            id: CustomUUID(value: UUID()),
            title: "My first post",
            publishedAt: Date(),
            tags: [.swift, .graphql, .vapor]
        )
    ]
}
