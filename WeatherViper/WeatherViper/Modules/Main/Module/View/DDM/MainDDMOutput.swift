//
//  MainDDMOutput.swift
//  WeatherViper
//
//  Created by Мишустин Сергеевич on 29/10/2018.
//  Copyright © 2018 LTD Zebka. All rights reserved.
//

import UIKit

protocol MainDDMOutput: class {
  
  func dataSourceForTableView(_ tableView: UITableView) -> UITableViewDataSource
  func delegateForTableView(_ tableView: UITableView) -> UITableViewDelegate
  
}
