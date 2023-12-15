import Foundation

// MARK: - Welcome
struct ArticlesModel: Decodable {
    let userId, id: Int
    let title: String
    let completed: Bool
}
