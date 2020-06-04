import Foundation

struct Post: Codable {
    let id: CustomUUID
    var title: String
    let publishedAt: Date
    var tags: [Tag]
    let author: Author
}
