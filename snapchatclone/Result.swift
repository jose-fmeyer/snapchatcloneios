//
//  Result.swift
//  snapchatclone
//
//  Created by Jose Meyer on 4/19/17.
//  Copyright © 2017 Jose Meyer. All rights reserved.
//

import Foundation

typealias Completion = (AppError?, Any?) -> Void

enum Result<T> {
    case Success(T)
    case Failure(AppError)
}
