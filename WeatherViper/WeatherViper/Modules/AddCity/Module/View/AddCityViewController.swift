//
//  AddCityAddCityViewController.swift
//  GenerambaSandbox
//
//  Created by hugo on 30/10/2018.
//  Copyright © 2018 ZebkaLTD. All rights reserved.
//

import UIKit

final class AddCityViewController: UIViewController {

  // MARK: -
  // MARK: Outlets
  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var buttonAddToName: UIButton!
  @IBOutlet weak var buttonCancel: UIButton!
  
  @IBOutlet weak var activityView: UIView!
  
  
  // MARK: -
  // MARK: Properties
  var output: AddCityViewOutput!
  
  
  // MARK: -
  // MARK: Life cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    textField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    output.viewIsReady()
  }
  
  // MARK: -
  // MARK: Action
  @IBAction func didClickCancelButton(_ sender: UIButton) {
    output.cancelButtonClick()
  }
  
  @IBAction func buttonAddToNameClick(_ sender: UIButton) {
    activityView.alpha = 1
    textField.resignFirstResponder()
    output.addCityToNameClick()
  }

}

// MARK: -
// MARK: AddCityViewInput
extension AddCityViewController: AddCityViewInput {
  func showAlertCityIsAdd(cityName: String) {
    AlertView.showAlerViewIn(viewController: self, withTitle: "Поздравляем!!!", andMessage: "Город \(cityName) успешно добавлен в базу")
  }
  
  func showAlertErrorCityAdd(error: String) {
    AlertView.showAlerViewIn(viewController: self, withTitle: "Внимание!!!", andMessage: "К сожалению у Вас ошибка: \n\(error)")
  }
  
  func showErrorForIncorrectName() {
    AlertView.showAlerViewIn(viewController: self, withTitle: "Внимание!!!", andMessage: "К сожалению у Вас ошибка: \nНе верное название горда!")
  }
  
  func clearTextField() {
    textField.text = nil
    buttonAddToName.isEnabled = false
  }
  
  func hideActivityView() {
    activityView.alpha = 0
  }
}


extension AddCityViewController: UITextFieldDelegate {
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
  }
  
  @objc func textFieldDidChange(_ textField: UITextField) {
    output.currentTextInTextField = textField.text
    if let text = textField.text, text.count > 0 {
      buttonAddToName.isEnabled = true
    } else {
      buttonAddToName.isEnabled = false
    }
  }
}
