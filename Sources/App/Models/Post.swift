import Foundation

struct Post: Codable {
    var id: Int
    var title: String

    init(id: Int, title: String) {
        self.id = id
        self.title = title
    }
}
