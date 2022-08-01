//
//  Image.swift
//  tv_maze (iOS)
//
//  Created by Pedro Omar Quimi Reyes on 01/08/22.
//

import Foundation
struct ImageCodable : Identifiable, Codable {
    
    let id : String? = UUID().uuidString
    let medium : String?
    let original : String?

    enum CodingKeys: String, CodingKey {

        case medium = "medium"
        case original = "original"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        medium = try values.decodeIfPresent(String.self, forKey: .medium)
        original = try values.decodeIfPresent(String.self, forKey: .original)
    }
}
