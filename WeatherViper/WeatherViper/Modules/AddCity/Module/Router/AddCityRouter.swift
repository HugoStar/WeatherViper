//
//  AddCityAddCityRouter.swift
//  GenerambaSandbox
//
//  Created by hugo on 30/10/2018.
//  Copyright © 2018 ZebkaLTD. All rights reserved.
//

import LightRoute

final class AddCityRouter: AddCityRouterInput {
  weak var transitionHandler: TransitionHandler!
  
  func clouseCurrentModule() {
    try! transitionHandler.closeCurrentModule().perform()
  }

}
