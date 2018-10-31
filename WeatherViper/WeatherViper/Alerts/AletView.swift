//
//  AletView.swift
//  WeatherViper
//
//  Created by Мишустин Сергеевич on 31/10/2018.
//  Copyright © 2018 LTD Zebka. All rights reserved.
//

import UIKit

final class AlertView {
  static func showAlerViewIn(viewController: UIViewController, withTitle title: String, andMessage message: String) {
    let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
    alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil))
    viewController.present(alert, animated: true, completion: nil)
  }
}
