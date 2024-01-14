//
//  TimeContent.swift
//  CinigryElite
//
//  Created by jay sabeen on 15/01/24.
//

import SwiftUI

struct TimeContent: View {
    
    let showTimes: [MovieSessions]
    
    var body: some View {
        HStack {
            ScrollView(.horizontal) {
                HStack {
                    ForEach((0...showTimes.count - 1), id: \.self) { i in
                        Spacer(minLength: 20)
                        TimeView(timeStr: showTimes[i].Showtime ?? "")
                    }
                }
            }
        }
        .frame(maxWidth: GlobalModel.screenWidth - 20)
        .frame(maxHeight: 150)
        .cornerRadius(5)
        .padding(.leading, -10)
    }
}

#Preview {
    TimeContent(showTimes: MockDates.mockSessions)
}
