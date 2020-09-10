//
//  NetworkingClient.swift
//  AlamoFireStudy
//
//  Created by Desenvolvimento on 19/12/19.
//  Copyright © 2019 Raphael Barbosa. All rights reserved.
//

import Foundation
import Alamofire

class NetworkingClient {
    
    typealias WebServiceResponse = ([[String: Any]]?, Error?) -> Void
    
    func execute(_ url: URL, completion: @escaping WebServiceResponse) {
               
        AF.request(url).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let jsonArray = value as? [[String: Any]]
                completion(jsonArray, nil)
            case .failure(let error):
                completion(nil, error)
            }
        }
    }
}
