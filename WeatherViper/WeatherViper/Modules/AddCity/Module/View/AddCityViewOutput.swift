//
//  AddCityAddCityViewOutput.swift
//  GenerambaSandbox
//
//  Created by hugo on 30/10/2018.
//  Copyright © 2018 ZebkaLTD. All rights reserved.
//

protocol AddCityViewOutput: class {
  /// - author: hugo
  var currentTextInTextField: String? { set get }
  
  func viewIsReady()
  func cancelButtonClick()
  func addCityToNameClick()
  
}
