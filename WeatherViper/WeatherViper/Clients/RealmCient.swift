//
//  RealmCient.swift
//  WeatherViper
//
//  Created by Мишустин Сергеевич on 29/10/2018.
//  Copyright © 2018 LTD Zebka. All rights reserved.
//

import Foundation
import RealmSwift

final class RealmCient {
  
  static let realm = try! Realm()
  
  static func all() -> [City] {
    let result = realm.objects(City.self)
    return Array(result)
  }
  
  @discardableResult
  static func addCity(_ city: City) -> City {
    try! realm.write {
      realm.add(city, update: true)
    }
    return city
  }
  
  static func deleteItem(_ item: City) {
    try! realm.write {
      realm.delete(item)
    }
  }

}
