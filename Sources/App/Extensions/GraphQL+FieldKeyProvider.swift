import GraphQLKit

extension Post: FieldKeyProvider {
    typealias FieldKey = FieldKeys

    enum FieldKeys: String {
        case id
        case title
        case publishedAt
    }
}

extension PostController: FieldKeyProvider {
    typealias FieldKey = FieldKeys

    enum FieldKeys: String {
        case posts
    }
}
