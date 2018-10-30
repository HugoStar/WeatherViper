//
//  AddCityAddCityAssemblyContainer.swift
//  GenerambaSandbox
//
//  Created by hugo on 30/10/2018.
//  Copyright © 2018 ZebkaLTD. All rights reserved.
//

import Swinject
import SwinjectStoryboard

final class AddCityAssemblyContainer: Assembly {

	func assemble(container: Container) {
		container.register(AddCityInteractor.self) { (r, presenter: AddCityPresenter) in
			let interactor = AddCityInteractor()
			interactor.output = presenter

			return interactor
		}

		container.register(AddCityRouter.self) { (r, viewController: AddCityViewController) in
			let router = AddCityRouter()
			router.transitionHandler = viewController

			return router
		}

		container.register(AddCityPresenter.self) { (r, viewController: AddCityViewController) in
			let presenter = AddCityPresenter()
			presenter.view = viewController
			presenter.interactor = r.resolve(AddCityInteractor.self, argument: presenter)
			presenter.router = r.resolve(AddCityRouter.self, argument: viewController)

			return presenter
		}

		container.storyboardInitCompleted(AddCityViewController.self) { r, viewController in
			viewController.output = r.resolve(AddCityPresenter.self, argument: viewController)
		}
	}

}
