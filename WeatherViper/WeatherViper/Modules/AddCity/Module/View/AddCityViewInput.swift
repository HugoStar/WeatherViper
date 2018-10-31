//
//  AddCityAddCityViewInput.swift
//  GenerambaSandbox
//
//  Created by hugo on 30/10/2018.
//  Copyright © 2018 ZebkaLTD. All rights reserved.
//

protocol AddCityViewInput: class {
  /// - author: hugo
  func showErrorForIncorrectName()
  func hideActivityView()
  func clearTextField()
  
  
  //City
  func showAlertCityIsAdd(cityName: String)
  func showAlertErrorCityAdd(error: String)
  
}
