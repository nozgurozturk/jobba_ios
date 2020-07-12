//
//  AddButton.swift
//  Jobba_iOS
//
//  Created by Ozgur Ozturk on 11.07.2020.
//  Copyright © 2020 Ozgur Ozturk. All rights reserved.
//

import SwiftUI

struct AddButton: View {
    @State private var isOpen = false
    
    var body: some View {
        Button(action:{
            self.isOpen = true
        }){
            Image(systemName: "plus.circle")
                .font(.system(size:24))
            
        }.sheet(isPresented: $isOpen,  content: {
            JobNew()
        })
    }
    
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddButton()
    }
}
