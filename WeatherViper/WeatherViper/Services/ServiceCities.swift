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
  func addCityWithName(_ cityName: String, responce: @escaping CityResponse)
  func deleteCityWithName(_ name: String) -> City?
  
  func loadCities() -> [City]

}

class CitiesManager: ServiceCities {

  func loadCities() -> [City] {
    return RealmCient.all()
  }

  func addCityWithName(_ cityName: String, responce: @escaping CityResponse) {
    APIClient.addCityWithName(cityName) { city, error in
      guard let city = city else { responce(nil, error!); return }
      RealmCient.addCity(city)
      responce(city, nil)
    }
  }
  
  func addCityWithCoordinates(_ coordinates: CLLocationCoordinate2D) -> City? {
    return nil
  }
  func deleteCityWithName(_ name: String) -> City? {
    return nil
  }

}
