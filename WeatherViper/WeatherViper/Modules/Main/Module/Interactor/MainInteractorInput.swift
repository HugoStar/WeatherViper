//
//  MainMainInteractorInput.swift
//  GenerambaSandbox
//
//  Created by hugo on 26/10/2018.
//  Copyright © 2018 ZebkaLTD. All rights reserved.
//

import Foundation

protocol MainInteractorInput: class {

  func loadData()
  func getCountCities() -> Int
  func getCityAtIndex(index: Int) -> City?
  
}
