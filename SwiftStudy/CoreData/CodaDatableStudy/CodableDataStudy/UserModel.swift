//
//  UserModel.swift
//  CodableDataStudy
//
//  Created by Desenvolvimento on 17/12/19.
//  Copyright © 2019 Raphael Barbosa. All rights reserved.
//

import Foundation

struct UserModel: Codable {
    var name: String
    var address: AddressModel
}
