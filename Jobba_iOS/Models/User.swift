//
//  User.swift
//  Jobba_iOS
//
//  Created by Ozgur Ozturk on 7.07.2020.
//  Copyright © 2020 Ozgur Ozturk. All rights reserved.
//

import SwiftUI

struct User: Codable, Hashable {
    var id: String
    var userName: String
    var email : String
    var isAuth: Bool
}


