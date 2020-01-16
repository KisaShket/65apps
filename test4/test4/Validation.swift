//
//  Validation.swift
//  test4
//
//  Created by Miska  on 15/01/2020.
//  Copyright © 2020 Miska . All rights reserved.
//

import Foundation

class Validation{
    let maxChars = 32
    let minChars = 2
    
    func validateEmail(mail: String) -> Bool {
        let emailRegex =  "^[A-Za-z]([A-Za-z0-9](.){0,1}(-){0})+[A-Za-z0-9]\\@([A-Za-z0-9])+((.-){0,1}+[A-Za-z0-9]){1}\\.[a-z]{2,3}$"
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluate(with: mail)
    }
    func validateLogin(login: String) -> Bool{
        let loginRegex = "^[A-Za-z]([A-Za-z0-9](.){0,1}(-){0})+[A-Za-z0-9]$"
        return NSPredicate(format: "SELF MATCHES %@", loginRegex).evaluate(with: login)
    }
    
    
    func validateCount(login: String) -> Bool {
        return login.count > minChars && login.count < maxChars
    }
    
    func validate(login:String)->Bool{
        if login.contains("@"){
            return validateEmail(mail: login) && validateCount(login: login)
        }else{
            return validateLogin(login: login) && validateCount(login: login)
        }
    }
    
}
