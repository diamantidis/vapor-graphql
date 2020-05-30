import Foundation

struct Post: Codable {
    let id: CustomUUID
    let title: String
    let publishedAt: Date
    let tags: [Tag]
}
