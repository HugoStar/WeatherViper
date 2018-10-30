//
//  MainMainPresenter.swift
//  GenerambaSandbox
//
//  Created by hugo on 26/10/2018.
//  Copyright © 2018 ZebkaLTD. All rights reserved.
//

final class MainPresenter: MainViewOutput {
  
  // MARK: -
  // MARK: Properties
  weak var view: MainViewInput!
  var interactor: MainInteractorInput!
  var router: MainRouterInput!
  
  // MARK: -
  // MARK: MainViewOutput
  func viewIsReady() {
    interactor.loadData()
  }
  
  func moveToAddCityModule() {
    router.openAddCityModule()
  }
  
}

// MARK: -
// MARK: MainInteractorOutput
extension MainPresenter: MainInteractorOutput {
  
  
}

// MARK: -
// MARK: MainModuleInput
extension MainPresenter: MainModuleInput {
  
  
}

// MARK: -
// MARK: MainDDMInput
extension MainPresenter: MainDDMInput {
  func getCityAtIndex(_ index: Int) -> City {
    guard let city = interactor.getCityAtIndex(index: index) else { fatalError("Index Is Invalid") }
    return city
  }
  
  
  func getCountTableViewCells() -> Int {
    return interactor.getCountCities()
  }
  
  
}

