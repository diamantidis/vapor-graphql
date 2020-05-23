import GraphQLKit

extension Post: FieldKeyProvider {
    typealias FieldKey = FieldKeys

    enum FieldKeys: String {
        case id
        case title
    }
}

extension PostController: FieldKeyProvider {
    typealias FieldKey = FieldKeys

    enum FieldKeys: String {
        case posts
    }
}
