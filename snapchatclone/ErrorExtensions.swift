//
//  ErrorExtensions.swift
//  snapchatclone
//
//  Created by Jose Meyer on 4/20/17.
//  Copyright © 2017 Jose Meyer. All rights reserved.
//

import Foundation

extension Error {
    
    func checkExistsUserInfoError(_ error: Error, byErrorName errorName: String) -> Bool {
        if let nsError = error as NSError!, nsError.userInfo["error_name"] != nil {
            return "\(nsError.userInfo["error_name"].unsafelyUnwrapped)" == errorName
        }
        return false
    }
}


protocol AppError: Error {
    
    func message() -> String
    func getType() -> AppError
}
