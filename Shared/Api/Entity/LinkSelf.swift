//
//  LinkSelf.swift
//  tv_maze (iOS)
//
//  Created by Pedro Omar Quimi Reyes on 01/08/22.
//

import Foundation
struct LinkSelf : Codable {
    let href : String?

    enum CodingKeys: String, CodingKey {

        case href = "href"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        href = try values.decodeIfPresent(String.self, forKey: .href)
    }

}

