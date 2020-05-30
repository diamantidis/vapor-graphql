import Vapor
import GraphQLKit

enum Schemas {
    static var postSchema = Schema<PostController, Request>([
        Scalar(CustomUUID.self)
            .description("My custom UUID"),

        Scalar(Date.self)
            .description("Date Type"),

        Type(Post.self, fields: [
            Field(.id, at: \.id),
            Field(.title, at: \.title),
            Field(.publishedAt, at: \.publishedAt),
        ]),

        Query([
            Field(.posts, at: PostController.fetchPosts),
        ]),
    ])
}
