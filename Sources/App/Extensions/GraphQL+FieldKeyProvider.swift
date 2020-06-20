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
        case title
        case tags
        case input

        case posts
        case deletePost
        case editPost
        case createPost
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

extension PostInput: FieldKeyProvider {
    typealias FieldKey = FieldKeys

    enum FieldKeys : String {
        case title
        case tags
        case publishedAt
    }
}
