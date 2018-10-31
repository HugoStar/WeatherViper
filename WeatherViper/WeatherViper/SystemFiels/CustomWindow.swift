//
//  CustomWindow.swift
//  WeatherViper
//
//  Created by Мишустин Сергеевич on 31/10/2018.
//  Copyright © 2018 LTD Zebka. All rights reserved.
//

import UIKit

class CustomWindow: UIWindow {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    customInit()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    customInit()
  }
  
  private func customInit() {
    let tapGesterForHideKeyboard = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
    tapGesterForHideKeyboard.cancelsTouchesInView = false
    self.addGestureRecognizer(tapGesterForHideKeyboard)
  }

  
  
  //MARK: - Actions
  @objc func hideKeyboard() {
    self.endEditing(true)
  }

}
