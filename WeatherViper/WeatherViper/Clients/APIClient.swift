//
//  APIClient.swift
//  WeatherViper
//
//  Created by Мишустин Сергеевич on 29/10/2018.
//  Copyright © 2018 LTD Zebka. All rights reserved.
//

import Foundation
import Alamofire

final class APIClient {
  
  private init() {}
  
  private static let api_key = "0f49f454b8ae2376d58805cc4e9d5a10"
  private static let mainURL = "http://api.openweathermap.org/data/2.5/weather"
  
  static func addCityWithName(_ name: String) {
    let currentURL = "\(mainURL)?q=\(name)&APPID=\(api_key)"
    Alamofire.request(currentURL).responseData { dataResponse in
      do {
        let city = try JSONDecoder().decode(City.self, from: dataResponse.data!)
        print(city)
      } catch {
        print(error.localizedDescription)
      }
      
    }

  }

}


