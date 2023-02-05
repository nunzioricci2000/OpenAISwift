//
//  Created by Adam Rush - OpenAISwift
//

import Foundation

public struct OpenAI: Codable {
    public let object: String
    public let model: String?
    public let choices: [Choice]
}

public struct Choice: Codable {
    public let text: String
}

public struct ImageResponse: Codable {
    public let data: [ImageChoice]
}

public struct ImageChoice: Codable {
    public let url: String
}
