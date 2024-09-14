import Foundation

struct PageModel: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String?
    let content: String
    let references: [String]?
    let table: [[String]]? // Cada array interno é uma linha da tabela, pode ser nil se não houver tabela
}
