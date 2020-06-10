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
	
	private var articleListVM: ArticleListViewModel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setup()
	}
	
	private func setup(){
		self.navigationController?.navigationBar.prefersLargeTitles = true
		
		let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=8561426478a7435ca4042e1a236d552f")!
		
		Webservice().getArticles(url: url) { articles in
			
			if let articles = articles{
				self.articleListVM = ArticleListViewModel(articles: articles)
				
				DispatchQueue.main.async {
					self.tableView.reloadData()
				}
			}
			
		}
		
	}
	
	override func numberOfSections(in tableView: UITableView) -> Int {
		return self.articleListVM == nil ? 0 : self.articleListVM.numberOfSection
	}
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return self.articleListVM.numberOfRowsInSection(section)
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleTableViewCell", for: indexPath) as? ArticleTableViewCell else {
			fatalError("ArticleTableViewCell not found")
		}
		
		let articleVM = self.articleListVM.articleAtIndex(indexPath.row)
		
		cell.titleLabel.text = articleVM.title
		cell.descLabel.text = articleVM.description
		
		return cell
	}
	
}
