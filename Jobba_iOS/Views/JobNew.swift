//
//  JobNew.swift
//  Jobba_iOS
//
//  Created by Ozgur Ozturk on 9.07.2020.
//  Copyright © 2020 Ozgur Ozturk. All rights reserved.
//

import SwiftUI

struct JobNew: View {
    @EnvironmentObject var appData: AppData
    @Environment(\.presentationMode) var presentationMode
    @State var title: String = ""
    @State var description: String = ""
    @State var company: String = ""
    @State var tags: String = ""
    @State var link: String = ""
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack {
                Button(action:{
                    self.presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "chevron.down")
                          .font(.system(size: 18))
                    
                }
                Spacer()
                Button(action:{}){
                    Text("Save")
                        .font(.system(size: 18))
                }
            }
            .padding(.vertical)
            .foregroundColor(Color(UIColor.systemBlue))
            Group{
                JobTextField(label:"Company", text:$company)
                JobTextField(label:"Title", text:$title)
                JobTextField(label:"Tags", text:$tags)
                JobTextField(label:"Link", text:$link)
                TextView(placeholderText:"Enter job description...", text: $description) {
                    $0.backgroundColor = UIColor.systemGray6
                    $0.keyboardDismissMode = .interactive
                }
                .padding(.top, 16)
                .frame(maxHeight:.infinity)
            }
        }
        .padding()
        .background(Color(UIColor.systemGray6))
    }
}

struct JobTextField: View {
    var label: String
    @Binding var text: String
    var body: some View {
        VStack{
            HStack(alignment: .center) {
                Text(self.label)
                    .foregroundColor(Color(UIColor.placeholderText))
                TextField("", text:$text)
                    .textFieldStyle(PlainTextFieldStyle())
            }
            Divider()
        }
    }
}



struct JobNew_Previews: PreviewProvider {
    static var previews: some View {
        JobNew().environmentObject(AppData())
    }
}
