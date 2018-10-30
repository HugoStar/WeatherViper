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
	// MARK: Properties
	var output: AddCityViewOutput!

	// MARK: -
	// MARK: Life cycle
	override func viewDidLoad() {
		super.viewDidLoad()
		output.viewIsReady()
	}

}

// MARK: -
// MARK: AddCityViewInput
extension AddCityViewController: AddCityViewInput {

	func setupInitialState() {

	}

}
