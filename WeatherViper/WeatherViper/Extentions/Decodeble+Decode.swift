//
//  Decodeble+Decode.swift
//  WeatherViper
//
//  Created by Мишустин Сергеевич on 30/10/2018.
//  Copyright © 2018 LTD Zebka. All rights reserved.
//

import Foundation

extension Decodable {
  static func decode(data: Data) throws -> Self {
    let decoder = JSONDecoder()
    return try decoder.decode(Self.self, from: data)
  }
}
