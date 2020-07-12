//
//  Search.swift
//  Jobba_iOS
//
//  Created by Ozgur Ozturk on 11.07.2020.
//  Copyright © 2020 Ozgur Ozturk. All rights reserved.
//

import SwiftUI

struct Search: View {
    @State var searchQuery: String = ""
    @EnvironmentObject var appData: AppData
    var fiteredJobs:[Job] {
        self.appData.jobs.filter({self.searchQuery == "" ? false : $0.title.lowercased().contains(self.searchQuery.lowercased()) || $0.company.lowercased().contains(self.searchQuery.lowercased()) })
    }
    var body: some View {
        
        NavigationView{
            List {
                Section(header:SearchBar(searchQuery: $searchQuery)){
                    if self.searchQuery != "" {
                        ForEach(self.fiteredJobs){ job in
                            NavigationLink(destination: JobDetail(job: job)) {
                                JobRow(job: job)
                            }
                        }
                    } else {
                        Text("You can search jobs by name or company").font(.system(size:24, weight:.bold)).multilineTextAlignment(.center)
                    }
                }
            }.navigationBarTitle("Search")
        }
    }
}

struct SearchBar: View {
    @Binding var searchQuery: String
    var body: some View {
        HStack {
            HStack{
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color(.placeholderText))
                TextField("Search", text:$searchQuery)
            }
            .padding([.horizontal, .vertical], 8)
            .background(RoundedRectangle(cornerRadius: 8, style:.continuous).stroke(Color(.placeholderText), lineWidth: 1))
            if self.searchQuery != "" {
                Button(action:{
                    self.searchQuery = ""
                }){
                    Text("Cancel").foregroundColor(Color(.systemBlue))
                }.transition(.move(edge: .trailing))
            }
        }.animation(.default)
        .padding(.all)
        .listRowInsets(EdgeInsets(
                top: 0,
                leading: 0,
                bottom: 0,
                trailing: 0))
        .background(Color(.systemBackground))
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search().environmentObject(AppData())
    }
}
