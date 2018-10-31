//
//  MainDDMInput.swift
//  WeatherViper
//
//  Created by Мишустин Сергеевич on 29/10/2018.
//  Copyright © 2018 LTD Zebka. All rights reserved.
//

import UIKit

protocol MainDDMInput: class {
  
  //MARK: -
  //MARK: DataSource
  
  func getCountTableViewCells() -> Int
  func getCityAtIndex(_ index: Int) -> City
  
  //MARK: -
  //MARK: Delegate
  func showDetailCity(city: City)
  
}
