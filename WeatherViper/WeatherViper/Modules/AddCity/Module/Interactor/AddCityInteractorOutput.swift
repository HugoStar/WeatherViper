//
//  AddCityAddCityInteractorOutput.swift
//  GenerambaSandbox
//
//  Created by hugo on 30/10/2018.
//  Copyright © 2018 ZebkaLTD. All rights reserved.
//

import Foundation

protocol AddCityInteractorOutput: class {
  
  func incorrectName()
  func cityIsAdd(cityName: String)
  func errorAddCity(error: String)

}
