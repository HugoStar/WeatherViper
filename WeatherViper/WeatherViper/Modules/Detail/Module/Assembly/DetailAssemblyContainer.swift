//
//  DetailDetailAssemblyContainer.swift
//  GenerambaSandbox
//
//  Created by hugo on 31/10/2018.
//  Copyright © 2018 ZebkaLTD. All rights reserved.
//

import Swinject
import SwinjectStoryboard

final class DetailAssemblyContainer: Assembly {

	func assemble(container: Container) {
		container.register(DetailInteractor.self) { (r, presenter: DetailPresenter) in
			let interactor = DetailInteractor()
			interactor.output = presenter

			return interactor
		}

		container.register(DetailRouter.self) { (r, viewController: DetailViewController) in
			let router = DetailRouter()
			router.transitionHandler = viewController

			return router
		}

		container.register(DetailPresenter.self) { (r, viewController: DetailViewController) in
			let presenter = DetailPresenter()
			presenter.view = viewController
			presenter.interactor = r.resolve(DetailInteractor.self, argument: presenter)
			presenter.router = r.resolve(DetailRouter.self, argument: viewController)

			return presenter
		}

		container.storyboardInitCompleted(DetailViewController.self) { r, viewController in
			viewController.output = r.resolve(DetailPresenter.self, argument: viewController)
		}
	}

}
