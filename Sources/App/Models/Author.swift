import Foundation

struct Author: Codable {
    let id: CustomUUID
    let name: String
    let twitter: String
}
