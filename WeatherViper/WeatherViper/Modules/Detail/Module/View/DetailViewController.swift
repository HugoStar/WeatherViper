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

	func setupInitialState() {

	}

}
