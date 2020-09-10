//
//  DecodificarModel.swift
//  CodableDataStudy
//
//  Created by Desenvolvimento on 17/12/19.
//  Copyright © 2019 Raphael Barbosa. All rights reserved.
//

import Foundation

class DecodificarModel {
    
    let data: Data
    
    init(data: Data) {
        self.data = data
        
        if let user = try? JSONDecoder().decode(UserModel.self, from: self.data) {
            print(user.address.street)
        }
    }
    
}
