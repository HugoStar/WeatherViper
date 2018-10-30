//
//  City.swift
//  WeatherViper
//
//  Created by Мишустин Сергеевич on 29/10/2018.
//  Copyright © 2018 LTD Zebka. All rights reserved.
//

import Foundation
import RealmSwift
import Realm



class City: Object, Decodable {
  @objc dynamic var UID = ""
  @objc dynamic var name: String = ""
  @objc dynamic var temperature: Double = 0.0
  
  
  override static func primaryKey() -> String? {
    return "UID"
  }
  
  convenience init(name: String, temperature: Double) {
    self.init()
    self.name = name
    self.temperature = temperature
    self.UID = UUID().uuidString
  }
  
  private enum CodingKeys: String, CodingKey {
    case name
    case main
  }
  
  private enum MainCodingKeys: String, CodingKey {
    case temp = "temp"
  
  }

  
  convenience required init(from decoder: Decoder) throws {
    self.init()
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.name = try container.decode(String.self, forKey: .name)
    self.UID = UUID().uuidString
    
    let ratingsContainer = try container.nestedContainer(keyedBy: MainCodingKeys.self, forKey: .main)
    self.temperature = try ratingsContainer.decode(Double.self, forKey: .temp)
    

  }

  required init() {
    super.init()
  }

  required init(value: Any, schema: RLMSchema) {
    super.init(value: value, schema: schema)
  }

  required init(realm: RLMRealm, schema: RLMObjectSchema) {
    super.init(realm: realm, schema: schema)
  }

}
