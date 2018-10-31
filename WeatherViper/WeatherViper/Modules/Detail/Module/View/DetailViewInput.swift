//
//  DetailDetailViewInput.swift
//  GenerambaSandbox
//
//  Created by hugo on 31/10/2018.
//  Copyright © 2018 ZebkaLTD. All rights reserved.
//

protocol DetailViewInput: class {
  /// - author: hugo
  func setTempString(temp: String)
  func setIconString(icon: String)
  func setHumidity(humidity: String)
  func setCityName(cityName: String)
}
