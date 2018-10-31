//
//  AddCityAddCityPresenter.swift
//  GenerambaSandbox
//
//  Created by hugo on 30/10/2018.
//  Copyright © 2018 ZebkaLTD. All rights reserved.
//

import UIKit


final class AddCityPresenter: AddCityViewOutput, AddCityModuleInput {

  // MARK: -
  // MARK: Properties
  weak var view: AddCityViewInput!
  var interactor: AddCityInteractorInput!
  var router: AddCityRouterInput!
  var moduleOuput: MainModuleOutput!
  
  var currentTextInTextField: String?

  
  // MARK: -
  // MARK: AddCityViewOutput
  func viewIsReady() {
    
  }
  
  func cancelButtonClick() {
    router.clouseCurrentModule()
  }
  
  func addCityToNameClick() {
    if currentTextInTextField != nil {
      interactor.addCityWithName(name: currentTextInTextField!)
      currentTextInTextField = nil
      view.clearTextField()
    }
  }
  
  func addCityToGeolocationClick() {
    
  }
  
  // MARK: -
  // MARK: AddCityModuleInput

  
}

// MARK: -
// MARK: AddCityInteractorOutput
extension AddCityPresenter: AddCityInteractorOutput {
  func cityIsAdd(cityName: String) {
    DispatchQueue.main.async { [unowned self] in
      self.view.hideActivityView()
      self.router.clouseCurrentModule()
    }
  }
  
  func errorAddCity(error: String) {
    DispatchQueue.main.async { [unowned self] in
      self.view.hideActivityView()
      self.view.showAlertErrorCityAdd(error: error)
    }
  }
  
  func incorrectName() {
    view.hideActivityView()
    view.showErrorForIncorrectName()
  }
  
  
  
}


