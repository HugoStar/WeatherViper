//
//  CitiesService.swift
//  WeatherViper
//
//  Created by Мишустин Сергеевич on 29/10/2018.
//  Copyright © 2018 LTD Zebka. All rights reserved.
//

import CoreLocation

protocol ServiceCities {
  
  func addCityWithCoordinates(_ coordinates: CLLocationCoordinate2D) -> City?
  func addCityWithName(_ cityName: String) -> City?
  func deleteCityWithName(_ name: String) -> City?
  
  func loadCities() -> [City]

}

class CitiesManager: ServiceCities {
  
  
  func loadCities() -> [City] {
    return []
  }
  
  
  func addCityWithCoordinates(_ coordinates: CLLocationCoordinate2D) -> City? {
    return nil
  }
  func addCityWithName(_ cityName: String) -> City? {
    return nil
  }
  func deleteCityWithName(_ name: String) -> City? {
    return nil
  }

}
