import Vapor
import GraphQLKit

enum Schemas {
    static var postSchema = Schema<PostController, Request>([
        Type(Post.self, fields: [
            Field(.title, at: \.title),
            Field(.id, at: \.id),
        ]),
        Query([
            Field(.posts, at: PostController.fetchPosts),
        ]),
    ])
}
