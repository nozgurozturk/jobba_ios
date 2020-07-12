//
//  UserIcon.swift
//  Jobba_iOS
//
//  Created by Ozgur Ozturk on 8.07.2020.
//  Copyright © 2020 Ozgur Ozturk. All rights reserved.
//

import SwiftUI

struct UserIcon: View {
    @EnvironmentObject var appData:AppData
    var userFirstChar: String {
        String(self.appData.user.userName.first ?? "J")
    }
    var body: some View {
        Text(userFirstChar)
            .font(.headline)
            .frame(width:32,height: 32)
            .overlay(Circle().stroke(Color(UIColor.systemGray3), lineWidth: 2))
    }
}

struct UserIcon_Previews: PreviewProvider {
    static var previews: some View {
        UserIcon().environmentObject(AppData())
    }
}
