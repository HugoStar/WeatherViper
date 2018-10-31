//
//  DetailDetailViewController.swift
//  GenerambaSandbox
//
//  Created by hugo on 31/10/2018.
//  Copyright © 2018 ZebkaLTD. All rights reserved.
//

import UIKit

final class DetailViewController: UIViewController {
  
  // MARK: -
  // MARK: Outlets
  @IBOutlet weak var tempLabel: UILabel!
  @IBOutlet weak var humidityLabel: UILabel!
  @IBOutlet weak var iconLabel: UILabel!
  @IBOutlet weak var cityNameLabel: UILabel!

  
  
  // MARK: -
  // MARK: Properties
  var output: DetailViewOutput!
  
  // MARK: -
  // MARK: Life cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    output.viewIsReady()
  }
  
}

// MARK: -
// MARK: DetailViewInput
extension DetailViewController: DetailViewInput {
  func setTempString(temp: String) {
    tempLabel.text = temp
  }
  
  func setIconString(icon: String) {
    iconLabel.text = icon
  }
  
  func setHumidity(humidity: String) {
    humidityLabel.text = humidity
  }
  
  func setCityName(cityName: String) {
    cityNameLabel.text = cityName
  }
}
