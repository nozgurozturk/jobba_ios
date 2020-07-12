//
//  JobRow.swift
//  Jobba_iOS
//
//  Created by Ozgur Ozturk on 7.07.2020.
//  Copyright © 2020 Ozgur Ozturk. All rights reserved.
//

import SwiftUI

struct JobRow: View {
    
    var job: Job
    var body: some View {
        HStack(spacing:8.0){
            Image("")
                .frame(width: 32, height: 32)
                .background(Color.gray)
                .clipShape(Circle())
            VStack(alignment: .leading) {
                Text(job.title)
                    .font(.headline)
                Text(job.company)
                    .font(.caption)
                    .foregroundColor(Color(UIColor.systemGray))
                    .fontWeight(Font.Weight.semibold)
                
            }
            Spacer()
        }.padding(.vertical, 8)
    }
}

struct JobRow_Previews: PreviewProvider {
    static var previews: some View {
        JobRow(job: jobJson[0])
    }
}
