//
//  Date+Extension.swift
//  CinigryElite
//
//  Created by jay sabeen on 15/01/24.
//

import Foundation

enum DateFormat:String {
    case YearMonthDay = "YYYY-MM-dd"
    case isoYearMonthDayTimeandZone = "yyyy-MM-ddTHH:mm.SSSZ"
    case YearMonthDayTimeandZone = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
    case YearMonthDayTimeSeconds = "yyyy-MM-dd'T'HH:mm:ss.SSS"
    case monthDayYear = "MMMM dd,yyyy"
    case monthDayYearTime = "MMMM dd,yyyy h:mma"
    case monthDay = "MM-dd"
    case dateWeekday = "dd-MMMM-yyyy, EEEE"
    case timeAndZone = "hh.mm a"
    case smasherDefaultTime = "dd-MMM-yy, EEE"
    case monthNameDay = "MMM dd"
}

extension Date {
    /// getFormattedDateForToday
    /// - Parameter format: toFormat
    /// - Returns: Formated Date
    func getFormattedDateForToday(toFormat: String) -> String {
        let dateformat = DateFormatter()
        dateformat.locale = Locale(identifier: "en_US_POSIX")
        dateformat.dateFormat = toFormat
        return dateformat.string(from: self)
    }
    
    /// getFormattedDateForToday
    /// - Parameter FromDate: Input Date
    /// - Parameter fromFormate: Input Date Forat
    /// - Parameter Toformat: Needed Output Date Forat
    /// - Returns: Output Formated Date string
    func getFormattedDate(FromDate: String, fromFormate: String, Toformat: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.dateFormat = fromFormate
        let date = dateFormatter.date(from: FromDate)
        dateFormatter.dateFormat = Toformat
        return  dateFormatter.string(from: date!)
    }
    
    func getPreviousHalfyear() -> Date? {
        return Calendar.current.date(byAdding: .month, value: -6, to: self)
    }
    
    func getPreviousQuateryear() -> Date? {
        return Calendar.current.date(byAdding: .month, value: -3, to: self)
    }
    
    func getPreviousMonth() -> Date? {
        return Calendar.current.date(byAdding: .month, value: -1, to: self)
    }
    
    func getPreviousWeek() -> Date? {
        return Calendar.current.date(byAdding: .weekOfYear, value: -1, to: self)
    }
    
    func getPreviousYear() -> Date? {
        return Calendar.current.date(byAdding: .year, value: -1, to: self)
    }
    
    func getTimeBetween(fromTime: String, toTime: String) -> TimeInterval? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = DateFormat.YearMonthDayTimeandZone.rawValue
        let fromDay = dateFormatter.date(from: fromTime)
        let toDay = dateFormatter.date(from: toTime)
        var difftime: TimeInterval!
        if fromDay == nil || toDay == nil {
            difftime = 0
        } else {
            difftime = toDay!.timeIntervalSinceReferenceDate - fromDay!.timeIntervalSinceReferenceDate
        }
        return difftime
    }
    
}
