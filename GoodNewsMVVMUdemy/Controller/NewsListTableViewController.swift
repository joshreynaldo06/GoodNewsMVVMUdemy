//
//  NewsListTableViewController.swift
//  GoodNewsMVVMUdemy
//
//  Created by Josh JR Reynaldo on 10/06/20.
//  Copyright © 2020 Josh JR Reynaldo. All rights reserved.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController{
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setup()
	}
	
	private func setup(){
		self.navigationController?.navigationBar.prefersLargeTitles = true
		
	}
}
