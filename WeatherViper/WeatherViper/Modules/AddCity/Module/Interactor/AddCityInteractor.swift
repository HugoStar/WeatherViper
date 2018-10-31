//
//  AddCityAddCityInteractor.swift
//  GenerambaSandbox
//
//  Created by hugo on 30/10/2018.
//  Copyright © 2018 ZebkaLTD. All rights reserved.
//

typealias CityResponse = (_ city: City?, _ error: Error?) -> ()


final class AddCityInteractor: AddCityInteractorInput {

  // MARK: -
  // MARK: Properties
  weak var output: AddCityInteractorOutput!
  var serviceCities: ServiceCities!
  
  // MARK: -
  // MARK: AddCityInteractorInput
  func addCityWithName(name: String) {
    if name.matchesCity() {
      serviceCities.addCityWithName(name) { [unowned self] city, error in
        if city != nil {
          self.output.cityIsAdd(cityName: city!.name)
        } else {
          self.output.errorAddCity(error: error!.localizedDescription)
        }
      }
    } else {
      output.incorrectName()
    }
  }

}
