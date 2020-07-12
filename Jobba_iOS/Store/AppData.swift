//
//  AppData.swift
//  Jobba_iOS
//
//  Created by Ozgur Ozturk on 8.07.2020.
//  Copyright © 2020 Ozgur Ozturk. All rights reserved.
//
import SwiftUI
import Combine

final class AppData : ObservableObject {
    @Published var user = userJson
    @Published var jobs = jobJson
}

