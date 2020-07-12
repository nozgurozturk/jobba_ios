//
//  JobDetail.swift
//  Jobba_iOS
//
//  Created by Ozgur Ozturk on 7.07.2020.
//  Copyright © 2020 Ozgur Ozturk. All rights reserved.
//

import SwiftUI

struct JobDetail: View {
    @EnvironmentObject var appData: AppData
    @ObservedObject private var keyboard = KeyboardResponder()
    var job: Job
    var jobIndex: Int{
        appData.jobs.firstIndex(where: {$0.id == job.id})!
    }
    
    var body : some View {
        VStack{
            VStack(spacing:16){
                TextField("Company", text: $appData.jobs[jobIndex].company)
                    .font(.system(size:18, weight:.semibold, design: .default))
                    .textFieldStyle(PlainTextFieldStyle())
                TextField("Title", text:  $appData.jobs[jobIndex].title)
                    .font(.system(size:28, weight:.heavy, design: .default))
                    .textFieldStyle(PlainTextFieldStyle())
                Picker(selection: $appData.jobs[jobIndex].status, label: Text("Status")) {
                    ForEach(Job.Status.allCases, id: \.self) {
                        Text($0.rawValue)
                    }
                }.pickerStyle(SegmentedPickerStyle())
                
                HStack {
                    ForEach(job.tags, id: \.id) {
                        tag in
                        Tag(text:tag)
                    }
                }
                
                TextView(placeholderText:"Enter job description...", text: $appData.jobs[jobIndex].description) {
                    $0.keyboardDismissMode = .interactive
                    
                }
                .padding(.top, 16)
                Spacer()
            }
        }
        .padding(.horizontal)
        .navigationBarTitle("", displayMode: .inline)
        .animation(.easeInOut)
        .padding(.bottom, keyboard.currentHeight)
    }
}

struct JobDetail_Previews: PreviewProvider {
    static var previews: some View {
        JobDetail(job: jobJson[0])
            .environmentObject(AppData())
    }
}
