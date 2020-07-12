//
//  NewJobData.swift
//  Jobba_iOS
//
//  Created by Ozgur Ozturk on 10.07.2020.
//  Copyright © 2020 Ozgur Ozturk. All rights reserved.
//

import SwiftUI
import Combine

class NewJobStore: ObservableObject {
    @Published var title = ""
    @Published var description = ""
    @Published var company = ""
    @Published var tags = ""
    @Published var link = ""
}
