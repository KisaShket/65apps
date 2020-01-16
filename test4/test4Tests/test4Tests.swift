//
//  test4Tests.swift
//  test4Tests
//
//  Created by Miska  on 15/01/2020.
//  Copyright © 2020 Miska . All rights reserved.
//

import XCTest
@testable import test4
class test4Tests: XCTestCase {
    
    let validate = Validation()
    
    func testLogin(){
        let validLogin=[
            "miska",
            "Colour-Of-BLack",
            "ak-47.7.62",
            "he.ral-t",
            "so-ba-ka-so-ba-ka"
            
        ]
        
        let invalidLogin=[
            "La",
            "sor..row",
            "de--spair",
            "1blossom",
            ".wanwan",
            "qwertyuiopqweryuiopqwertyuiopqwert"
        ]
        for login in validLogin{
            XCTAssertEqual(validate.validate(login: login), true)
        }
        
        for login in invalidLogin{
            XCTAssertEqual(validate.validate(login: login), false)
        }
        
    }
    
    func testEmail(){
        
        
        let validEmail=[
            "miska@gamil.com",
            "olympiya-ro@bk.ru",
            "creature.big@yandex.ru",
            "soviet-Alex.F@mail.ru",
            "kawasakiH2R@gmail.com",
            "leed1337-3@mail.ru"
        ]
        
        let invalidMail=[
            "111k@bk.ru",
            "-kawa@gmail.com",
            "rasta-@mail.ru",
            ".vasya@bk.ru",
            "ciri@.yandex.ru",
            "alamofire@-mail.ru",
            "qwertyuiopqwertyuiopqwertyqwerty@bk.ru",
            "kisa--shket@mail.ru",
            "creature..big@yandex.ru",
            "en@-Field.ru"
        ]
        
        for email in validEmail{
            XCTAssertEqual(validate.validate(login: email), true)
        }
        
        for email in invalidMail{
            XCTAssertEqual(validate.validate(login: email), false)
        }
    }
    

}
