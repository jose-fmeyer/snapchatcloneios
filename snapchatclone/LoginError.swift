//
//  LoginError.swift
//  snapchatclone
//
//  Created by Jose Meyer on 4/19/17.
//  Copyright © 2017 Jose Meyer. All rights reserved.
//

import Foundation
import FirebaseAuth

enum LoginError: AppError {
    case userNotFound
    case undefinedError
    case invalidEmail
    case invalidPassword
    case invalidCredential
    case emailAlreadyInUse
    
    private static var messages = [
        LoginError.userNotFound : "Invalid email",
        LoginError.undefinedError : "Wrong password",
        LoginError.invalidEmail : "User doesn't exist",
        LoginError.invalidPassword : "Unexpected error on login",
        LoginError.invalidCredential : "Invalid credentials",
        LoginError.emailAlreadyInUse : "Email already in use"
    ]
    
    private static var loginErrorByErrorCode = [
        FIRAuthErrorCode.errorCodeInvalidEmail : LoginError.invalidEmail,
        FIRAuthErrorCode.errorCodeWrongPassword : LoginError.invalidPassword,
        FIRAuthErrorCode.errorCodeUserNotFound : LoginError.userNotFound,
        FIRAuthErrorCode.errorCodeInvalidCredential : LoginError.invalidCredential,
        FIRAuthErrorCode.errorCodeEmailAlreadyInUse : LoginError.emailAlreadyInUse
    ]
    
    static func handleLoginError(error: NSError) -> LoginError {
        if let errorCode = FIRAuthErrorCode(rawValue: error.code), loginErrorByErrorCode[errorCode] != nil {
            return loginErrorByErrorCode[errorCode]!
        } else {
            print(error.debugDescription)
            return .undefinedError
        } 
    }
    
    func message() -> String {
        return LoginError.messages[self]!
    }
    
    func getType() -> AppError {
        return self
    }
}
