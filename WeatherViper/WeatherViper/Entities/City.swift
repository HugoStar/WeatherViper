//
//  City.swift
//  WeatherViper
//
//  Created by Мишустин Сергеевич on 29/10/2018.
//  Copyright © 2018 LTD Zebka. All rights reserved.
//

import Foundation
import RealmSwift

class City: Object {
  @objc dynamic var id = UUID().uuidString
  @objc dynamic var name: String = ""
  
  convenience init(name: String) {
    self.init()
    self.name = name
  }

}
