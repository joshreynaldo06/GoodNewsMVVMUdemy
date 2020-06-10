//
//  Article.swift
//  GoodNewsMVVMUdemy
//
//  Created by Josh JR Reynaldo on 10/06/20.
//  Copyright © 2020 Josh JR Reynaldo. All rights reserved.
//

import Foundation

struct ArticleList: Decodable{
	let articles: [Article]
}

struct Article: Decodable{
	let title: String
	let description: String
}
