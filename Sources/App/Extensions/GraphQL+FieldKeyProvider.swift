import GraphQLKit

extension Post: FieldKeyProvider {
    typealias FieldKey = FieldKeys

    enum FieldKeys: String {
        case id
        case title
        case publishedAt
        case tags
        case author
    }
}

extension PostController: FieldKeyProvider {
    typealias FieldKey = FieldKeys

    enum FieldKeys: String {
        case id

        case posts
        case deletePost
    }
}

extension Author: FieldKeyProvider {
    typealias FieldKey = FieldKeys

    enum FieldKeys: String {
        case id
        case name
        case twitter
    }
}
