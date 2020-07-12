//
//  Tag.swift
//  Jobba_iOS
//
//  Created by Ozgur Ozturk on 8.07.2020.
//  Copyright © 2020 Ozgur Ozturk. All rights reserved.
//

import SwiftUI

struct Tag: View {
    var text: String
    var body: some View {
        HStack{
            Text(text)
            .foregroundColor(Color(UIColor.white))
            Button(action:{}){
                Image(systemName: "xmark.circle")
                    .foregroundColor(Color(UIColor.white))
            }.buttonStyle(PlainButtonStyle())
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 4)
        .background(Color(UIColor.systemGray4))
        .frame(height: 24)
        .clipShape(Capsule())

    }
}

struct Tag_Previews: PreviewProvider {
    static var previews: some View {
        Tag(text:"Tag")
    }
}
