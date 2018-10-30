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
  let addCityModuleID = "addCityController"
  
  //MARK: -
  //MARK: MainRouterInput
  func openAddCityModule() {
    try! transitionHandler.forSegue(identifier: addCityModuleID, to: AddCityModuleInput.self).then({ modulInput in
      return nil
    })
  }

}
