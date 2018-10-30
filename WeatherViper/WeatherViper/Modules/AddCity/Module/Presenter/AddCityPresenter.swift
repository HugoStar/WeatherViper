//
//  AddCityAddCityPresenter.swift
//  GenerambaSandbox
//
//  Created by hugo on 30/10/2018.
//  Copyright © 2018 ZebkaLTD. All rights reserved.
//

final class AddCityPresenter: AddCityViewOutput {
  
  // MARK: -
  // MARK: Properties
  
  weak var view: AddCityViewInput!
  var interactor: AddCityInteractorInput!
  var router: AddCityRouterInput!
  
  // MARK: -
  // MARK: AddCityViewOutput
  func viewIsReady() {
    
  }
  
}

// MARK: -
// MARK: AddCityInteractorOutput
extension AddCityPresenter: AddCityInteractorOutput {
  
  
}

// MARK: -
// MARK: AddCityModuleInput
extension AddCityPresenter: AddCityModuleInput {
  
  
}
