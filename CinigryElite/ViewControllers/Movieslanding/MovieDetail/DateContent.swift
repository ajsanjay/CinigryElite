//
//  DateContent.swift
//  CinigryElite
//
//  Created by jay sabeen on 15/01/24.
//

import SwiftUI

struct DateContent: View {
    
    let dates: [String]
    @State var selectedIndex: Int? = 0
    @Binding var selectedDay: Int
    
    var body: some View {
        HStack {
            ScrollView(.horizontal) {
                HStack {
                    ForEach((0...dates.count - 1), id: \.self) { i in
                        let aDay = Date().getFormattedDate(FromDate: dates[i], fromFormate: DateFormat.YearMonthDay.rawValue, Toformat: "dd MMM EEE")
                        let fullDay: [String] = aDay.components(separatedBy: " ")
                        DateView(week: fullDay[2], date: "\(fullDay[1]) \(fullDay[0])", isSelected: selectedIndex == i ? true : false)
                            .onTapGesture {
                                self.selectedIndex = i
                                self.selectedDay = i
                            }
                    }
                }
            }
        }
        .frame(maxWidth: GlobalModel.screenWidth - 20)
        .frame(maxHeight: 130)
        .background(Color.lightGry.opacity(0.2))
        .cornerRadius(5)
        .padding()
    }
}

#Preview {
    DateContent(dates: MockDates.mockDates, selectedDay: .constant(0))
}
