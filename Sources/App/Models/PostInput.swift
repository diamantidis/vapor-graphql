import Foundation

struct PostInput: Codable {
    let title: String
    let tags: [Tag]
    let publishedAt: Date
}
