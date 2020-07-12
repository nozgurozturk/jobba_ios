//
//  JobList.swift
//  Jobba_iOS
//
//  Created by Ozgur Ozturk on 7.07.2020.
//  Copyright © 2020 Ozgur Ozturk. All rights reserved.
//

import SwiftUI

struct JobList: View {
    @EnvironmentObject var appData: AppData
    
    @State var jobStatus: Job.Status = Job.Status.Created
    
    var body: some View {
        NavigationView{
            List {
                Section(header:
                    Picker(selection: $jobStatus, label: Text("Status")) {
                        ForEach(Job.Status.allCases, id: \.self) {
                            Text($0.rawValue)
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                     .padding(.all)
                     .listRowInsets(EdgeInsets(
                                   top: 0,
                                   leading: 0,
                                   bottom: 0,
                                   trailing: 0))
                    .background(Color(.systemBackground))
                ){ForEach (self.appData.jobs.filter({$0.status == jobStatus})) { job in
                        NavigationLink(destination: JobDetail(job: job)) {
                            JobRow(job: job)
                        }
                    }
                }
            }.navigationBarTitle("Jobs", displayMode: .large)
             .navigationBarItems(leading:UserIcon(), trailing: AddButton())
        }
    }
}

struct JobList_Previews: PreviewProvider {
    static var previews: some View {
        JobList()
            .environmentObject(AppData())
    }
}
