//
//  MainMainInteractor.swift
//  GenerambaSandbox
//
//  Created by hugo on 26/10/2018.
//  Copyright © 2018 ZebkaLTD. All rights reserved.
//

final class MainInteractor: MainInteractorInput {

  
  //MARK: -
  //MARK: - Properties
  weak var output: MainInteractorOutput!
  var serviceCities: ServiceCities!
  var listCities: [City] = []
  
  
  //MARK: -
  //MARK: - MainInteractorInput
  func loadData() {
    listCities = serviceCities.loadCities()
  }
  
  func getCountCities() -> Int {
    return listCities.count
  }
  
  func getCityAtIndex(index: Int) -> City? {
      return listCities[index]
  }
  
  

}
