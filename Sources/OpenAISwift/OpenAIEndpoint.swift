//
//  Created by Adam Rush - OpenAISwift
//

import Foundation

enum Endpoint {
    case completions
    case edits
    case imagesGenerations
}

extension Endpoint {
    var path: String {
        switch self {
        case .completions:
            return "/v1/completions"
        case .edits:
            return "/v1/edits"
        case .imagesGenerations:
            return "/v1/images/generations"
        }
    }
    
    var method: String {
        switch self {
        case .completions, .edits, .imagesGenerations:
            return "POST"
        }
    }
    
    func baseURL() -> String {
        switch self {
        case .completions, .edits, .imagesGenerations:
            return "https://api.openai.com"
        }
    }
}
