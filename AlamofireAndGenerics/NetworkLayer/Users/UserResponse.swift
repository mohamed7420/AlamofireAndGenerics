//
//  UserResponse.swift
//  AlamofireAndGenerics
//
//  Created by Mohamed on 11/1/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation

class UserResponse: Codable{
    
    let data: [UserModel]?
    
    enum CodingKeys: String , CodingKey {
        case data = "data"
    }
}
