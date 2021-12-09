//
//  Extensions.swift
//  carewego
//
//  Created by Apprenant 60 on 09/12/2021.
//

import Foundation

extension Date {
    func timeAgo() -> String {
        let calendar = Calendar.current
        let minuteAgo = calendar.date(byAdding: .minute, value: -1, to: Date())!
        let hourAgo = calendar.date(byAdding: .hour, value: -1, to: Date())!
        let dayAgo = calendar.date(byAdding: .day, value: -1, to: Date())!
        let weekAgo = calendar.date(byAdding: .weekOfYear, value: -1, to: Date())!
        let monthAgo = calendar.date(byAdding: .month, value: -1, to: Date())!
        let yearAgo = calendar.date(byAdding: .year, value: -1, to: Date())!
        if minuteAgo < self {
            let diff = Calendar.current.dateComponents([.second], from: self, to: Date()).second ?? 0
            return "\(diff)s"
        } else if hourAgo < self {
            let diff = Calendar.current.dateComponents([.minute], from: self, to: Date()).minute ?? 0
            return "\(diff)min"
        } else if dayAgo < self {
            let diff = Calendar.current.dateComponents([.hour], from: self, to: Date()).hour ?? 0
            return "\(diff)h"
        } else if weekAgo < self {
            let diff = Calendar.current.dateComponents([.day], from: self, to: Date()).day ?? 0
            return "\(diff)j"
        } else if monthAgo < self {
            let diff = Calendar.current.dateComponents([.weekOfYear], from: self, to: Date()).weekOfYear ?? 0
            return "\(diff) weeks"
        } else if yearAgo < self {
            let diff = Calendar.current.dateComponents([.month], from: self, to: Date()).month ?? 0
            return "\(diff) mon"
        }
        let diff = Calendar.current.dateComponents([.year], from: self, to: Date()).year ?? 0
        return "\(diff)y"
    }
}
