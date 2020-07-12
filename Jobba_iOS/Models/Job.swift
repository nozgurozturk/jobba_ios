//
//  Job.swift
//  Jobba_iOS
//
//  Created by Ozgur Ozturk on 7.07.2020.
//  Copyright © 2020 Ozgur Ozturk. All rights reserved.
//

import SwiftUI

struct Job: Codable, Hashable, Identifiable {
    var id: String
    var title: String
    var company: String
    var status: Status
    var platform: String
    var description: String
    var link: String
    var tags: Array<String>
    var createdAt: Int
    var updatedAt: Int
    enum Status : String, Codable, CaseIterable {
        case Created
        case Waiting
        case Accepted
        case Rejected
    }
}

extension String: Identifiable {
    public var id: String {
        return self
    }
}
