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
		
		let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=8561426478a7435ca4042e1a236d552f")!
		
		Webservice().getArticles(url: url) { _ in
			
		}
	}
	
	
}
