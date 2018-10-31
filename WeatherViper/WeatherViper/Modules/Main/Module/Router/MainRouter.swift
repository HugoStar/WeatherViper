//
//  MainMainRouter.swift
//  GenerambaSandbox
//
//  Created by hugo on 26/10/2018.
//  Copyright © 2018 ZebkaLTD. All rights reserved.
//

import LightRoute

final class MainRouter: MainRouterInput {

  //MARK: -
  //MARK: Properties
  weak var transitionHandler: TransitionHandler!
  let addCityModuleID = "AddCityController"
  let detailCityModulerID = "DetailCityController"
  
  //MARK: -
  //MARK: MainRouterInput
  func openAddCityModuleWithModuleOutput(_ modulOutput: MainModuleOutput) {
    try! transitionHandler.forSegue(identifier: addCityModuleID, to: AddCityModuleInput.self).then({ modulInput in
      modulInput.moduleOuput = modulOutput
    })
  }
  
  func showDetailCityModuleWithCity(_ city: City) {
    try! transitionHandler.forSegue(identifier: detailCityModulerID, to: DetailModuleInput.self).then({ moduleInput in
      moduleInput.configure(with: city)
    })
  }
  

  
}
