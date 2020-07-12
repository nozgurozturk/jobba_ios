//
//  ContentView.swift
//  Jobba_iOS
//
//  Created by Ozgur Ozturk on 7.07.2020.
//  Copyright © 2020 Ozgur Ozturk. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    // @State private var activeTab: Tab = Tab.jobs
    @EnvironmentObject var appData: AppData
    enum Tab {
        case jobs
        case search
    }
    var body: some View {
        
        TabView {
            
            JobList()
                .tabItem{
                    Image(systemName: "list.dash")
                    Text("Jobs")
                    
            }
            Search()
                .tabItem{
                Image(systemName: "magnifyingglass")
                Text("Search")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(AppData())
    }
}
