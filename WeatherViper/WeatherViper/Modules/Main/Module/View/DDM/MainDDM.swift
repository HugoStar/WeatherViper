//
//  MainDDM.swift
//  WeatherViper
//
//  Created by Мишустин Сергеевич on 29/10/2018.
//  Copyright © 2018 LTD Zebka. All rights reserved.
//

import UIKit

class MainDDM: NSObject, UITableViewDataSource, UITableViewDelegate {
  
  weak var presentor: MainDDMInput!

  // MARK: -
  // MARK: UITableViewDataSource
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return presentor.getCountTableViewCells()
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let city = presentor.getCityAtIndex(indexPath.row)
    let cell = tableView.dequeueReusableCell(withIdentifier: "CityCell", for: indexPath)
    cell.textLabel?.text = city.name
    cell.detailTextLabel?.text = "\(city.temperature)"
    return cell
  }
  
  // MARK: -
  // MARK: UITableViewDelegate
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    let city = presentor.getCityAtIndex(indexPath.row)
    presentor.showDetailCity(city: city)
  }
  

}

extension MainDDM: MainDDMOutput {
  func delegateForTableView(_ tableView: UITableView) -> UITableViewDelegate {
    return self
  }
  
  func dataSourceForTableView(_ tableView: UITableView) -> UITableViewDataSource {
    return self
  }
  
  
}
