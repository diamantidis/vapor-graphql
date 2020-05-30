import Vapor
import GraphQLKit

enum Schemas {
    static var postSchema = Schema<PostController, Request>([
        Enum(Tag.self, [
            Value(.swift)
                .description("About Swift"),
            Value(.vapor)
                .description("About Vapor"),
            Value(.graphql)
                .description("About GraphQL"),
        ])
            .description("Tags"),

        Scalar(CustomUUID.self)
            .description("My custom UUID"),

        Scalar(Date.self)
            .description("Date Type"),

        Type(Post.self, fields: [
            Field(.id, at: \.id),
            Field(.title, at: \.title),
            Field(.publishedAt, at: \.publishedAt),
            Field(.tags, at: \.tags),
        ]),

        Query([
            Field(.posts, at: PostController.fetchPosts),
        ]),
    ])
}
