//
//  MainMainViewController.swift
//  GenerambaSandbox
//
//  Created by hugo on 26/10/2018.
//  Copyright © 2018 ZebkaLTD. All rights reserved.
//

import UIKit

final class MainViewController: UIViewController {
  
  // MARK: -
  // MARK: Outlets
  @IBOutlet weak var tableView: UITableView!
  
  // MARK: -
  // MARK: Properties
  var output: MainViewOutput!
  var ddm: MainDDMOutput!
  
  // MARK: -
  // MARK: Life cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    output.viewIsReady()
    tableView.dataSource = ddm.dataSourceForTableView(tableView)
  }
  
}

// MARK: -
// MARK: MainViewInput
extension MainViewController: MainViewInput {
  
  func setupInitialState() {
    
  }
  
}

// MARK: -
// MARK: MainDDMInput
extension MainViewController: MainDDMInput {

  func getCountTableViewCells() -> Int {
    return 5
  }
  
  
}
