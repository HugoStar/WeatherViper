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
  @objc dynamic var humidity: Int = 0
  @objc dynamic var icon: String = ""
  
  override static func primaryKey() -> String? {
    return "name"
  }
  
  convenience init(name: String, temperature: Double, humidity: Int, icon: String) {
    self.init()
    self.name = name
    self.temperature = temperature
    self.humidity = humidity
    self.icon = icon
    self.UID = UUID().uuidString
  }
  
  private enum CodingKeys: String, CodingKey {
    case name
    case main
    case weather = "weather"
  }
  
  private enum WeatherCodingKeys: String, CodingKey {
    case icon = "icon"
  }
  
  private enum MainCodingKeys: String, CodingKey {
    case temp = "temp"
    case humidity = "humidity"
    
  }
  
  struct Icons: Decodable {
    let icons: [String]
    enum IconsKey: CodingKey {
      case icons
    }
  }
  
  

  
  convenience required init(from decoder: Decoder) throws {
    self.init()
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.name = try container.decode(String.self, forKey: .name)
    self.UID = UUID().uuidString
    
    let mainContainer = try container.nestedContainer(keyedBy: MainCodingKeys.self, forKey: .main)
    self.temperature = try mainContainer.decode(Double.self, forKey: .temp)
    self.humidity = try mainContainer.decode(Int.self, forKey: .humidity)
    
    var whetherArrayType = try container.nestedUnkeyedContainer(forKey: .weather)
    while !whetherArrayType.isAtEnd {
      let weather = try whetherArrayType.nestedContainer(keyedBy: WeatherCodingKeys.self)
      let icon = try weather.decode(String.self, forKey: .icon)
      self.icon = icon
      break
    }
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
