//
//  String+RegularExpression.swift
//  WeatherViper
//
//  Created by Мишустин Сергеевич on 31/10/2018.
//  Copyright © 2018 LTD Zebka. All rights reserved.
//

import Foundation

extension String {
  func matchesCity() -> Bool {
    return self.range(of: "^[a-zA-Z]+(?:[\\s-][a-zA-Z]+)*$", options: .regularExpression, range: nil, locale: nil) != nil
  }
}
