import Vapor
import GraphQLKit

final class PostController {
    func fetchPosts(request: Request, _: NoArguments) -> [Post] {
        return posts
    }

    private lazy var author = Author(
        id: CustomUUID(value: UUID()),
        name: "Ioannis Diamantidis",
        twitter: "@diamantidis_io"
    )

    private lazy var posts = [
        Post(
            id: CustomUUID(value: UUID()),
            title: "My first post",
            publishedAt: Date(),
            tags: [.swift, .graphql, .vapor],
            author: self.author
        )
    ]
}

extension PostController {
    struct DeletePostArguments: Codable {
        let id: CustomUUID
    }

    func deletePost(request: Request, arguments: DeletePostArguments) -> Bool {
        let postIndex = posts.firstIndex{ $0.id == arguments.id }
        guard let index = postIndex?.indexValue else {
            return false
        }
        posts.remove(at: index)
        return true
    }
}
