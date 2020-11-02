//
//  ViewController.swift
//  AlamofireAndGenerics
//
//  Created by Mohamed on 10/31/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let users: UserApiProtocol = UserAPI()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        users.getUser { (result) in
            
            switch result{
            case .success(let response):
                
                let users = response?.data ?? []
                
                for user in users{
                    print(user.firstName ?? "" , user.lastName ?? "")
                }
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }


}

