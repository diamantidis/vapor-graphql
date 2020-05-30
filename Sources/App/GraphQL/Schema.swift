import Vapor
import GraphQLKit

enum Schemas {
    static var postSchema = Schema<PostController, Request>([
        Scalar(CustomUUID.self)
            .description("My custom UUID"),

        Type(Post.self, fields: [
            Field(.id, at: \.id),
            Field(.title, at: \.title),
        ]),

        Query([
            Field(.posts, at: PostController.fetchPosts),
        ]),
    ])
}
