//
//  LoginService.swift
//  snapchatclone
//
//  Created by Jose Meyer on 4/19/17.
//  Copyright © 2017 Jose Meyer. All rights reserved.
//

import Foundation
import FirebaseAuth

class LoginService {
    
    static let instance = LoginService()
    
    private init() {} // This prevents others from using the default '()' initializer for this class.
    
    func doEmailAuth(username: String, password: String, onCompletion: Completion?) {
        let credential = FIREmailPasswordAuthProvider.credential(withEmail: username, password: password)
        FIRAuth.auth()?.signIn(with: credential, completion: {
            (user, error) in
            if error != nil {
                onCompletion?(LoginError.handleLoginError(error: error! as NSError), nil)
                return
            }
            onCompletion?(nil, user)
        })
    }
    
    func createNewUser(email: String, password: String, onCompletion: Completion?) {
        FIRAuth.auth()?.createUser(withEmail: email, password: password, completion: {
            (user, error) in
            if error != nil {
                onCompletion?(LoginError.handleLoginError(error: error! as NSError), nil)
                return
            }
            onCompletion?(nil, user)
        })
    }
}
