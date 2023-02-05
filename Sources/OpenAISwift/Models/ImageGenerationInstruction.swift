//
//  ImageGenerationInstruction.swift
//  
//
//  Created by Nunzio Ricci on 05/02/23.
//

import Foundation

class ImageGenerationInstruction: Encodable {
    var prompt: String
    
    init(prompt: String) {
        self.prompt = prompt
    }
    
    enum CodingKeys: String, CodingKey {
        case prompt
    }
}
