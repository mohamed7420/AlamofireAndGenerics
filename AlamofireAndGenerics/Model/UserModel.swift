//
//  UserModel.swift
//  AlamofireAndGenerics
//
//  Created by Mohamed on 11/1/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation

class UserModel: Codable{
    
    var firstName: String?
    var lastName: String?
    
    enum CodingKeys: String , CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
    }
}
