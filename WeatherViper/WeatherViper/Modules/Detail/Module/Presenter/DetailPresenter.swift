//
//  DetailDetailPresenter.swift
//  GenerambaSandbox
//
//  Created by hugo on 31/10/2018.
//  Copyright © 2018 ZebkaLTD. All rights reserved.
//

final class DetailPresenter: DetailViewOutput {
  
  // MARK: -
  // MARK: Properties
  
  weak var view: DetailViewInput!
  var interactor: DetailInteractorInput!
  var router: DetailRouterInput!
  
  private var cityForDetail: City!
  
  
  
  // MARK: -
  // MARK: DetailViewOutput
  func viewIsReady() {
    
  }
  
}

// MARK: -
// MARK: DetailInteractorOutput
extension DetailPresenter: DetailInteractorOutput {
  
  
}

// MARK: -
// MARK: DetailModuleInput
extension DetailPresenter: DetailModuleInput {
  func configure(with data: City) {
    cityForDetail = data
  }
}
