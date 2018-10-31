//
//  APIClient.swift
//  WeatherViper
//
//  Created by Мишустин Сергеевич on 29/10/2018.
//  Copyright © 2018 LTD Zebka. All rights reserved.
//

import Foundation
import Alamofire


private typealias NETResponce = (_ dataResponse: Data?, _ error: Error?) -> ()

final class APIClient {
  private init() {}
  
  private static let api_key = "0f49f454b8ae2376d58805cc4e9d5a10"
  private static let mainURL = "http://api.openweathermap.org/data/2.5/weather"
  
  static func addCityWithName(_ name: String, callBack: @escaping CityResponse) {
    let currentURL = "\(mainURL)?q=\(name)&units=metric&APPID=\(api_key)"
    
    NetClient.getDataWithURL(currentURL) { data, error in
      guard let data = data else { callBack(nil, error); return  }
      let city = try? City.decode(data: data)
      callBack(city, nil)
    }
  }
}


private class NetClient {
  
  enum NETError: Error {
    case uncorrectURL
    case runtimeError(String)
  }
  
  private init() {}
  static func getDataWithURL(_ url: String, response: @escaping NETResponce) {
    guard let url = URL(string: url) else {
      response(nil, NETError.uncorrectURL)
      return
    }
    Alamofire.request(url).responseJSON { dataResponse in

      switch dataResponse.response!.statusCode {
      case 200 ... 299:
        response(dataResponse.data!, nil)
      default:
        let errorDicteonary = dataResponse.value as! [String : Any]
        let errorString = errorDicteonary["message"] as! String
        response(nil, NETError.runtimeError(errorString))
      }
    }
  }
}







