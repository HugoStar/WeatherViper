//
//  MainMainAssemblyContainer.swift
//  GenerambaSandbox
//
//  Created by hugo on 26/10/2018.
//  Copyright © 2018 ZebkaLTD. All rights reserved.
//

import Swinject
import SwinjectStoryboard

final class MainAssemblyContainer: Assembly {
  
  func assemble(container: Container) {
    container.register(MainInteractor.self) { (r, presenter: MainPresenter) in
      let interactor = MainInteractor()
      interactor.output = presenter
      return interactor
    }
    
    container.register(MainRouter.self) { (r, viewController: MainViewController) in
      let router = MainRouter()
      router.transitionHandler = viewController
      return router
    }
    
    container.register(MainPresenter.self) { (r, viewController: MainViewController) in
      let presenter = MainPresenter()
      presenter.view = viewController
      presenter.interactor = r.resolve(MainInteractor.self, argument: presenter)
      presenter.router = r.resolve(MainRouter.self, argument: viewController)
      return presenter
    }
    
    container.register(MainDDM.self) { (r, viewController: MainViewController) in
      let ddm = MainDDM()
      ddm.view = viewController
      return ddm
    }
    
    
    
    container.storyboardInitCompleted(MainViewController.self) { r, viewController in
      viewController.output = r.resolve(MainPresenter.self, argument: viewController)
      viewController.ddm = r.resolve(MainDDM.self, argument: viewController)
    }
  }
  
}
