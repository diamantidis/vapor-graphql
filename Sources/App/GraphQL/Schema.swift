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

        Type(Author.self, fields: [
            Field(.id, at: \.id),
            Field(.name, at: \.name),
            Field(.twitter, at: \.twitter)
        ]),

        Type(Post.self, fields: [
            Field(.id, at: \.id),
            Field(.title, at: \.title),
            Field(.publishedAt, at: \.publishedAt),
            Field(.tags, at: \.tags),
            Field(.author, at: \.author),
        ]),

        Query([
            Field(.posts, at: PostController.fetchPosts),
        ]),

        Input(PostInput.self, [
            InputField(.title, at: \.title),
            InputField(.tags, at: \.tags),
            InputField(.publishedAt, at: \.publishedAt)
        ]),

        Mutation([
            Field(.deletePost, at: PostController.deletePost)
                .argument(.id, at: \.id),

            Field(.editPost, at: PostController.editPost)
                .argument(.id, at: \.id)
                .argument(.title, at: \.title)
                .argument(.tags, at: \.tags),

            Field(.createPost, at: PostController.createPost)
                .argument(.input, at: \.input)
        ])
    ])
}
