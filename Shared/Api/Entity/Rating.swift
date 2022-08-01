//
//  Rating.swift
//  tv_maze (iOS)
//
//  Created by Pedro Omar Quimi Reyes on 01/08/22.
//

import Foundation
struct Rating : Codable, Identifiable {
    
    let id: String? = UUID().uuidString
    let average : Double?

    enum CodingKeys: String, CodingKey {

        case average = "average"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        average = try values.decodeIfPresent(Double.self, forKey: .average)
    }
}
