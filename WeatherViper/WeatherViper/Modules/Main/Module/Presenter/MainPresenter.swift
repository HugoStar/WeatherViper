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
