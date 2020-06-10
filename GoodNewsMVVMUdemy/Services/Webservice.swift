//
//  Webservice.swift
//  GoodNewsMVVMUdemy
//
//  Created by Josh JR Reynaldo on 10/06/20.
//  Copyright © 2020 Josh JR Reynaldo. All rights reserved.
//

import Foundation

class Webservice{
	
	func getArticles(url: URL, completion: @escaping ([Any]?) -> ()) {
		
		URLSession.shared.dataTask(with: url) {data, response, error in
			
			if let error = error{
				print(error.localizedDescription)
				completion(nil)
			} else if let data = data {
				
				print(data)
				
			}
		}.resume()
	}
}
